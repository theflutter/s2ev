import 'package:flutter/material.dart';


class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff19294F)),
      child: IconButton(
        iconSize: 18,
        icon: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          // Add your onPressed logic here
        },
      ),
    );
  }
}
