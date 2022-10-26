// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FoodStory extends StatelessWidget{
  final image;
  final foodName;

  const FoodStory(this.image, this.foodName, {super.key});

  @override
  Widget build(Object context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          foodName,
          style: const TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}