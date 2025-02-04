// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final slider;

  const CarouselCard({super.key, required this.slider});

  @override
  Widget build(BuildContext context) {
    return carousel.CarouselSlider(
      items: <Widget>[
        for (var each in slider) ...[Image.network(each.file)]
      ],
      options: carousel.CarouselOptions(
        viewportFraction: 3,
        aspectRatio: 2.8,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        autoPlay: true,
        initialPage: 2,
      ),
    );
  }
}
