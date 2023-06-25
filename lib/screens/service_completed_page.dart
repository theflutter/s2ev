import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s2ev_app/screens/ongoing_service_page.dart';
import 'package:s2ev_app/widgets/otp_button_widget.dart';

class ServiceCompletedPage extends StatelessWidget {
  const ServiceCompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset("assets/sucess.svg"),
              SizedBox(height: 10),
              const Text(
                'You have successfully completed\nyour service.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w800,
                  color: Color(0xff324367),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 360,
                height: 118,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xffE4EAF1),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(3)),
                    const Center(
                      child: Text(
                        'Earning:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w800,
                          color: Color(0xff324367),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    const Divider(
                      color: Color(0xff909FBF),
                      thickness: 1.0,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 1.0,
                            height: 60,
                            color: Color(0xff909FBF),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              OtpButtonWidget(
                  text: 'Okay',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OngoingServicePage(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
