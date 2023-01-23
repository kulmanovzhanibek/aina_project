import 'package:aina_project/core/const/all_styles.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  final Function() onPressed;
  final bool isAgree;
  const CheckBox({Key? key, required this.onPressed, required this.isAgree}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: isAgree ? colorBlue : colorWhite,
          borderRadius: BorderRadius.circular(4),
          border: isAgree ? const Border() : Border.all(color: colorBlackDesc)
        ),
        child: isAgree ?
          const Center(
          child: Icon(
            Icons.check,
            size: 14,
            color: colorWhite,
          ),
        ) : const SizedBox()
      ),
    );
  }
}
