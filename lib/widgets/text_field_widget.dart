import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;

  //final TextEditingController emailController;
  CustomTextField({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 370,
        height: 46,
        child: TextField(
          decoration: InputDecoration(
            hintText: text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
