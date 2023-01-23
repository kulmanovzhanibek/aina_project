import 'package:aina_project/core/const/all_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainButton extends StatelessWidget {
  final Function() onPressed;
  final bool disabled;
  final String title;
  final String? icon;
  const MainButton({Key? key, required this.onPressed, required this.disabled, required this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width - 68,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: disabled ? color2LightGrey : colorBlue
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(icon != null)
                SvgPicture.asset(icon!),
              Text(title, style: textStyle1Description.copyWith(color: disabled ? colorGrey : colorWhite),),
            ],
          ),
        )
    );
  }
}
