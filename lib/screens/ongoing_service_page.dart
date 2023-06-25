import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/radio_button_page.dart';
import 'package:s2ev_app/screens/service_completed_page.dart';
import 'package:s2ev_app/widgets/call_widget.dart';
import 'package:s2ev_app/widgets/message_widget.dart';
import 'package:s2ev_app/widgets/otp_button_widget.dart';

class OngoingServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Handle back button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceCompletedPage(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 80),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Ongoing Services',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff19294F),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Column(
                children: [
                  Container(
                    width: 373,
                    height: 301,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffEBEEF1),
                    ),
                    child: Stack(
                      children: [
                        const Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CallWidget(),
                                SizedBox(
                                  width: 5,
                                ),
                                MessageWidget(),
                              ],
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.person,
                                        size: 48,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Tej |',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff19294F),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '+919876543210',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff19294F),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Booking ID: S2EV5141',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff19294F),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, -0.2),
                          child: Container(
                            width: 342,
                            height: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.only(left: 10, top: 4),
                            child: const Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff19294F),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Plot 30 NK Towers, Arunodaya Co-Operative\nC,Street number 6,Cyber Hills colony, VIP Hills,\nJaihind Enclave,Hyderabad, Telangana 500081',
                                    style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff6A7C9B)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            const Positioned(
                              top: 200,
                              left: 0,
                              right: 0,
                              child: Divider(
                                color: Color(0xff909FBF),
                                thickness: 1.0,
                              ),
                            ),
                            const Positioned(
                              top: 210, // Adjust the value to position the text
                              left: 250,
                              right: 0,
                              child: Text(
                                'Cancel Job',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Outfit',
                                  color: Color(0xffFC683F),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Positioned(
                              top: 215, // Adjust the value to position the text
                              left: 5,
                              right: 220,
                              child: Text(
                                '26 May,2023 (11.30AM)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Outfit',
                                  color: Color(0xff324367),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned(
                              top:
                                  240, // Adjust the value to move the button further down
                              left: 0,
                              right: 0,
                              child: OtpButtonWidget(
                                  text: 'Go to Map',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RadioButtonPage(),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
