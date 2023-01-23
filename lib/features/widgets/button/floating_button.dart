import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final Function() onPressed;
  final Color color;
  final Color iconColor;
  final Color? borderColor;
  const FloatingButton({Key? key, required this.onPressed, required this.color, required this.iconColor, this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: color,
      onPressed: onPressed,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor ?? Colors.transparent)
        ),
          child: Icon(Icons.chevron_right, color: iconColor,)
      ),
    );
  }
}

