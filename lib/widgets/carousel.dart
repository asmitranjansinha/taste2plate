import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final slider;

  const CarouselCard({super.key, required this.slider});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: <Widget>[
          for(var each in slider)...[
            Image.network(each.file)
          ]
        ],
        options: CarouselOptions(
            viewportFraction: 3,
            aspectRatio: 2.8,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            initialPage: 2));
  }
}
