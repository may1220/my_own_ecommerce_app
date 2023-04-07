import 'package:flutter/material.dart';
import 'package:my_own_ecommerce_app/utils/colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  final FontWeight weight;
  const AppText(
      {super.key,
      required this.text,
      this.size = 13,
      this.color = AppColors.black,
      this.weight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weight,
          fontFamily: 'Poppins'),
    );
  }
}
