import 'package:flutter/material.dart';

class OtpButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  OtpButtonWidget({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46,
        width: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFFC683F),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Outfit'),
          ),
        ),
      ),
    );
  }
}
