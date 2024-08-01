import 'package:adidas_ecommerce/components/custom_test/custom_text.dart';
import 'package:adidas_ecommerce/screens/home_screen/home_page/widget/CustomActionButton.dart';
import 'package:adidas_ecommerce/screens/home_screen/home_page/widget/CustomSlider.dart';
import 'package:adidas_ecommerce/screens/home_screen/home_page/widget/ProductGrid.dart';
import 'package:adidas_ecommerce/screens/home_screen/home_page/widget/TopCategories.dart';
import 'package:adidas_ecommerce/utils/DemoData.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../model/SneakerModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SneakerModel> sneaker = DemoData.sneakers;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomActionButton(),
                const SizedBox(
                  height: 10,
                ),
                const CustomText(
                  text: "Hello Salman",
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: "Let's Start shopping",
                  fontsize: 15,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomSlider(),
                const SizedBox(
                  height: 15,
                ),
                TopCategories(),

                const SizedBox(
                  height: 5,
                ),
                ProductGrid(sneaker: sneaker)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
