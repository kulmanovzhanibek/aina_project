import 'package:aina_project/core/const/all_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? hint;
  final TextStyle? style;
  final Function(String value)? onChanged;
  final Function(String value)? onSubmitted;
  final Function()? onPressed;
  final List<TextInputFormatter>? inputFormatters;
  const MainTextField({Key? key, required this.textEditingController, required this.hint, this.onChanged, this.onSubmitted, this.style, this.inputFormatters, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onPressed,
      inputFormatters: inputFormatters,
      controller: textEditingController,
      style: style ?? textStyle2Description,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintStyle: textStyle2Description.copyWith(color: colorDarkGrey, fontSize: style != null ? 24 : 14),
        hintText: hint ?? "",
        border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: colorDarkGrey),
            borderRadius: BorderRadius.circular(5) //<-- SEE HERE
        ),
      ),
    );
  }
}
