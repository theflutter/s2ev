import 'package:flutter/material.dart';

class SelectDateWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  SelectDateWidget({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46,
        width: 176,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6A7C9B),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Outfit',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Open calendar
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.expand_more),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
