// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ProductDealCard extends StatelessWidget {
  final image;
  final name;
  final category;
  final pointExpDate;

  const ProductDealCard({super.key, required this.image, required this.name, required this.category, required this.pointExpDate});

  @override
  Widget build(Object context) {
    return Column(
      children: [
        Image(image: NetworkImage(image)),
        Text(name, style: const TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500),),
        Text(category, style: const TextStyle(fontFamily: "Poppins"),),
        Text(pointExpDate)
      ],
    );
  }
}