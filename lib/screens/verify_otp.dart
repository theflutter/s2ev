import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/location_page.dart';

class VerifyOTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(padding: EdgeInsets.all(10)),
              Text(
                'Enter OTP sent to your phone number',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Outfit',
                  color: Color(0xff19294F),
                ),
              ),
              SizedBox(height: 19),
              Container(
                width: 370,
                height: 46,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter OTP',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              SizedBox(height: 19),
              Container(
                width: 370,
                height: 46,
                child: TextButton(
                  onPressed: () {
                    // Verify OTP logic here

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LocationPage(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFC683F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Verify OTP',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Outfit',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
