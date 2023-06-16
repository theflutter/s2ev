import 'package:flutter/material.dart';

class PasswordButtonWidget extends StatelessWidget {
  const PasswordButtonWidget({
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
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}