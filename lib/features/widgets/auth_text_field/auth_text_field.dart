import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/const/assets_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AuthTextField extends StatefulWidget {
  final Function(String) onChanged;
  final TextEditingController textEditingController;
  const AuthTextField({Key? key, required this.textEditingController, required this.onChanged}) : super(key: key);

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {

  var maskFormatter = MaskTextInputFormatter(
    mask: '### ### ## ##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              width: 95,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(imageKazakhstan),
                  const SizedBox(width: 9,),
                  Text("+7", style: textStyleText.copyWith(fontSize: 28),),
                  const SizedBox(width: 9,),
                  const Icon(Icons.keyboard_arrow_down_outlined, color: colorBlackDesc,)
                ],
              ),
            ),
            Center(
              child: Container(
                width: 95,
                height: 1,
                color: colorBlack,
              ),
            )
          ],
        ),
        const SizedBox(width: 20,),
        SizedBox(
          height: 42,
          width: MediaQuery.of(context).size.width - 183,
            child: TextField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: colorBlack),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: colorGrey),
                ),
              ),
              autofocus: true,
              onChanged: widget.onChanged,
              controller: widget.textEditingController,
              textAlign: TextAlign.start,
              style: textStyleText.copyWith(fontSize: 28),
              inputFormatters: [maskFormatter],
            )
        ),
        const SizedBox(height: 34,),
      ],
    );
  }
}
