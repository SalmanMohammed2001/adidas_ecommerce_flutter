import 'package:adidas_ecommerce/components/custom_test/custom_text.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7zaFxkuAWGDiDFwxOaNqT_6YgCUgWeuRYtA&s",
    "https://media.istockphoto.com/id/186056381/photo/green-heels-of-a-womans-sneaker-as-she-ran-on-grass.jpg?s=612x612&w=0&k=20&c=DKHqNu5qX_iuU0vOQJ1Y8_An2DJB9FXANc0_YAkQg1Q=",
    "https://i5.walmartimages.com/asr/80a88c0b-09e0-4984-bc49-4c29a0497ffd.f8b9c65bc45e0c7973334a10f92ec2d3.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF",
    "https://hypeandhyper.com/content/images/2022/06/allbirdslandscape-2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiVjqqyz2Jxwg-o4tuAxn9tLjvI7mrgG3z3w&s",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
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
              ),SizedBox(height: 10,),
              CarouselSlider(
                options: CarouselOptions(height: 180.0, autoPlay: true),
                items: images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                              color: Colors.amber,
                              image: DecorationImage(
                                  image: NetworkImage(i), fit: BoxFit.cover)));
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
