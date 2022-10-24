import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hinttxt;
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  const InputField({super.key, required this.hinttxt, required this.icon});

  @override
  Widget build(Object context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          prefixIcon: Image.asset(icon),
          prefixIconConstraints: const BoxConstraints(maxHeight: 25, minWidth: 50),
          hintText: hinttxt,
          hintStyle: const TextStyle(fontFamily: 'Poppins', color: Colors.grey, fontWeight: FontWeight.w400),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
    );
  }
}
