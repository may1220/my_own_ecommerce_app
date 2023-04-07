import 'package:flutter/material.dart';
import 'package:my_own_ecommerce_app/utils/Dimensions.dart';
import 'package:my_own_ecommerce_app/utils/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  const AppTextField({super.key, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Search Products',
                hintStyle: TextStyle(
                    color: AppColors.paleGreen,
                    letterSpacing: 0.5,
                    fontFamily: 'Poppins',
                    fontSize: Dimensions.font16),
                filled: true,
                fillColor: AppColors.grey,
                border: InputBorder.none),
          ),
        ),
        SizedBox(
          width: Dimensions.width10,
        ),
        Container(
          padding: EdgeInsets.all(Dimensions.width15),
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle, color: AppColors.grey),
          child: Image.asset(
            "assets/icons/filter.png",
            height: Dimensions.iconSize16,
          ),
        )
      ],
    );
  }
}
