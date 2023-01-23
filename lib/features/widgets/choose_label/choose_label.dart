import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/const/assets_images.dart';
import 'package:aina_project/core/const/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseLabel extends StatelessWidget {
  final String title;
  final String? iconLeftAsset;
  final bool isPressed;
  final Function() onPressed;
  const ChooseLabel({Key? key, required this.title, this.iconLeftAsset, required this.onPressed, required this.isPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isPressed ? colorBlue : colorBackgroundGrey
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if(iconLeftAsset != null)
                SvgPicture.asset(iconLeftAsset!),
              const SizedBox(width: 10,),
              Text(title, style: textStyle1Description.copyWith(color: isPressed ? colorWhite : colorBlack),),
              const Spacer(),
              SvgPicture.asset(iconCheck, color: isPressed ? colorWhite : colorDarkGrey,)
            ],
          ),
        ),
      ),
    );
  }
}
