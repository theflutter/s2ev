import 'package:flutter/material.dart';

class DeclineButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color colors;

  DeclineButtonWidget(
      {required this.text, required this.onTap, required this.colors});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46,
        width: 176,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.black.withOpacity(0.2),
            //   blurRadius: 2,
            //   offset: Offset(0, 2),
            // ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Outfit',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
