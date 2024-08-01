import 'package:adidas_ecommerce/components/custom_test/custom_text.dart';
import 'package:adidas_ecommerce/utils/DemoData.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../model/SneakerModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SneakerModel> sneaker = DemoData.sneakers;
  final List<dynamic> icons = [
    Icons.ac_unit,
    Icons.account_balance_sharp,
    Icons.car_rental,
    Icons.shopping_cart_rounded,
    Icons.domain_verification_outlined,
  ];

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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
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
                CarouselSlider(
                  options: CarouselOptions(height: 180.0, autoPlay: true),
                  items: DemoData.images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: NetworkImage(i),
                                    fit: BoxFit.cover)));
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Top Categories",
                      fontWeight: FontWeight.w800,
                    ),
                    CustomText(
                      text: "See All",
                      color: Colors.orange.shade700,
                      fontsize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: List.generate(
                      icons.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? Colors.orange
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: index == 0
                                      ? Colors.orange.shade700
                                      : Colors.grey.shade400),
                            ),
                            child: Icon(
                              icons[index],
                              color: index == 0
                                  ? Colors.white
                                  : Colors.grey.shade600,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: sneaker.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(sneaker[index].image),
                            fit: BoxFit.cover),
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Chip(
                                  label: Text("LKR ${sneaker[index].price}0"),
                                ),
                                const Icon(
                                  color: Colors.grey,
                                    Icons.favorite_outline_rounded)
                              ],
                            ),
                            Positioned(
                                bottom: 5,
                                child: Text(
                                  sneaker[index].title,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
