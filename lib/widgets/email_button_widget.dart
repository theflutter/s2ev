import 'package:flutter/material.dart';

class EmailButtonWidget extends StatelessWidget {
  const EmailButtonWidget({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 46,
      child: TextField(
        controller: emailController,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}