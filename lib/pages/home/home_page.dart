import 'package:flutter/material.dart';
import 'package:my_own_ecommerce_app/pages/home/home_app_bar.dart';
import 'package:my_own_ecommerce_app/utils/Dimensions.dart';
import 'package:my_own_ecommerce_app/pages/home/home_search.dart';
import 'package:my_own_ecommerce_app/utils/colors.dart';
import 'package:my_own_ecommerce_app/widget/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  List<String> imageList = [
    "assets/images/png/Ellipse 4.png",
    "assets/images/png/Ellipse 5.png",
    "assets/images/png/Ellipse 6.png",
    "assets/images/png/Ellipse 7.png",
    "assets/images/png/Ellipse 8.png",
  ];

  @override
  Widget build(BuildContext context) {
    print("Height ${Dimensions.screenHeight}");
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(Dimensions.width15),
        child: ListView(
          children: [
            SizedBox(
              height: Dimensions.height5,
            ),
            const HomeAppBar(),
            SizedBox(
              height: Dimensions.height10,
            ),
            AppTextField(textController: searchController),
            SizedBox(
              height: Dimensions.height10,
            ),
            Row(
              children: [
                AppText(
                  text: "Categories",
                  weight: FontWeight.bold,
                  size: Dimensions.font16,
                ),
                const Spacer(),
                AppText(
                  text: "See all",
                  size: Dimensions.font16,
                  color: AppColors.green,
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    /*   CachedNetworkImage(
        imageUrl: "http://via.placeholder.com/350x150",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ), */
                    return Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(
                          right: index == imageList.length - 1
                              ? 0
                              : Dimensions.width10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
