import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/slide_arrive.dart';

class SlideButtonWidget extends StatelessWidget {
  final String text;

  SlideButtonWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFFFC683F),
        borderRadius: BorderRadius.circular(4),
      ),
      child: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SlideArrive()),
            );
          }
        },
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_right,
                color: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Outfit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
