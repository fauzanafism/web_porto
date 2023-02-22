import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_porto/ui/constant.dart';

// ignore: must_be_immutable
class Gallery extends StatelessWidget {
  Gallery({Key? key}) : super(key: key);
  static const String baseUrl = 'res/images';
  List<String> imageList = [
    '$baseUrl/metapp.png',
    '$baseUrl/sirekabg1.png',
    '$baseUrl/sirekabg2.png',
    '$baseUrl/sirekabg3.png',
    '$baseUrl/teco.png',
    '$baseUrl/watchface.png',
    '$baseUrl/metrik22.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SelectableText(
            'GALLERY',
            style: headText,
          ),
          const SizedBox(height: 15),
          CarouselSlider(
            items: imageList.map((item) => Image.asset(item)).toList(),
            options: CarouselOptions(
                autoPlay: true, enlargeCenterPage: true, height: 500),
          ),
        ],
      ),
    );
  }
}
