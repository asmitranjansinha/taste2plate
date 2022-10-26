// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ProductDealCard extends StatelessWidget {
  final image;
  final name;
  final category;
  final pointExpDate;

  const ProductDealCard(
      {super.key,
      required this.image,
      required this.name,
      required this.category,
      required this.pointExpDate});

  @override
  Widget build(Object context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(width: 250, height: 150,child: Image(image: NetworkImage(image))),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 16, 50, 0),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: "Poppins", fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
            child: Text(
              category,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontFamily: "Poppins", color: Colors.grey),
            ),
          ),
          Text(pointExpDate.toString())
        ],
      ),
    );
  }
}
