import 'package:flutter/material.dart';
import 'package:my_own_ecommerce_app/utils/Dimensions.dart';
import 'package:my_own_ecommerce_app/utils/colors.dart';
import 'package:my_own_ecommerce_app/widget/app_icon.dart';
import 'package:my_own_ecommerce_app/widget/app_text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: Dimensions.height10 * 5,
          width: Dimensions.height10 * 5,
          child:
              const Image(image: AssetImage("assets/images/png/profile.png")),
        ),
        SizedBox(
          width: Dimensions.height10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: 'Welcome',
              size: Dimensions.font16,
            ),
            AppText(
              text: "Maddy Cassic",
              size: Dimensions.font20,
              weight: FontWeight.bold,
            ),
          ],
        ),
        const Spacer(),
        const AppIcon(
          icon: Icons.notifications_none_outlined,
          boxColor: AppColors.white,
          iconColor: AppColors.black,
          iconBoxColor: AppColors.green,
        ),
        const SizedBox(
          width: 7,
        ),
        const AppIcon(
          icon: Icons.shopping_cart_outlined,
          boxColor: AppColors.white,
          iconColor: AppColors.black,
          iconBoxColor: AppColors.green,
        ),
      ],
    );
  }

  goToCartPage() {}
}
