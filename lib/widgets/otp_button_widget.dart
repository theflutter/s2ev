import 'package:flutter/material.dart';

class OtpButtonWidget extends StatelessWidget {
  const OtpButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          // Send OTP logic here
        },
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFFFC683F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Send OTP',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}