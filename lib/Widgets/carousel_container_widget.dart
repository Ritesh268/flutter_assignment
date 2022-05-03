import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselContainerWidget extends StatelessWidget {
  const CarouselContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 140.0,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset("assets/Cricket.jpg"));
          },
        );
      }).toList(),
    );
  }
}
