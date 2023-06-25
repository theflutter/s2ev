import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 46,
      child: Container(
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
            'Login',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}
