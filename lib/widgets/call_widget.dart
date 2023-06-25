import 'package:flutter/material.dart';


class CallWidget extends StatelessWidget {
  const CallWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff5943BE)),
      child: IconButton(
        iconSize: 18,
        icon: Icon(
          Icons.call,
          color: Colors.white,
        ),
        onPressed: () {
          // Add your onPressed logic here
        },
      ),
    );
  }
}