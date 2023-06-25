import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s2ev_app/screens/offline_home_screen.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10)),
              const Text(
                'Location',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Outfit',
                  color: Color(0xff19294F),
                ),
              ),
              SizedBox(height: 20),
              SvgPicture.asset("assets/place.svg"),
              SizedBox(height: 30),
              const Text(
                'Allow  S2EV to access this devices location.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Outfit',
                  color: Color(0xff19294F),
                ),
              ),
              SizedBox(height: 19),
              Container(
                width: 370,
                height: 46,
                child: TextButton(
                  onPressed: () {
                    // Verify Allow here

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => OfflineHomePage(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFC683F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'Allow',
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
