import 'package:flutter/material.dart';

class FoodStory extends StatelessWidget{
  final image;
  final foodName;

  FoodStory(this.image, this.foodName);

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
          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}