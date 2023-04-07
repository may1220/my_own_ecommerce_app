import 'package:flutter/material.dart';
import 'package:my_own_ecommerce_app/utils/Dimensions.dart';
import 'package:my_own_ecommerce_app/widget/app_text.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color borderColor;
  final Color iconColor;
  final Color boxColor;
  final BoxShape boxShape;
  final Color iconBoxColor;
  final Color textColor;
  const AppIcon(
      {super.key,
      required this.icon,
      this.borderColor = Colors.green,
      this.iconColor = Colors.white,
      this.boxColor = Colors.green,
      this.iconBoxColor = Colors.white,
      this.boxShape = BoxShape.circle,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Dimensions.height38,
          width: Dimensions.height38,
          decoration: BoxDecoration(color: boxColor, shape: boxShape),
          child: Icon(
            icon,
            color: iconColor,
            size: Dimensions.iconSize27,
          ),
        ),
        Positioned(
          right: 0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: Dimensions.height20,
                width: Dimensions.height20,
                decoration: BoxDecoration(
                  color: iconBoxColor,
                  shape: boxShape,
                  border: Border.all(width: 2, color: borderColor),
                ),
              ),
              AppText(
                text: '66',
                color: textColor,
                size: 11,
              )
            ],
          ),
        ),
      ],
    );
  }
}
