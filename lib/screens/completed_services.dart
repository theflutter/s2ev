import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/radio_button_page.dart';

class CompletedServices extends StatelessWidget {
  const CompletedServices({super.key});

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
                          builder: (context) => RadioButtonPage(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 50),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Completed Services',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff19294F),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Column(
                children: [
                  Container(
                    width: 373,
                    height: 351,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffEBEEF1),
                    ),
                    child: Stack(
                      children: [
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
                              // Align(
                              //   alignment: Alignment.topLeft,
                              //   child: Padding(
                              //     padding: EdgeInsets.only(left: 70),
                              //     child: Text(
                              //       'Booking ID: S2EV5141',
                              //       textAlign: TextAlign.left,
                              //       style: TextStyle(
                              //         fontSize: 12,
                              //         fontWeight: FontWeight.bold,
                              //         color: Color(0xff19294F),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, -0.45),
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
                        const Padding(
                          padding: const EdgeInsets.fromLTRB(18, 160, 0, 10),
                          child: Row(
                            children: [
                              Text(
                                'Issue Solved:',
                                style: TextStyle(
                                    fontFamily: 'Outfit',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff19294F)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Chain Failure',
                                style: TextStyle(
                                    fontFamily: 'Outfit',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff19294F)),
                              ),
                              //SizedBox(height: 10),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 190, 10, 10),
                          child: Column(
                            children: [
                              Container(
                                width: 343,
                                height: 95,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                  color: Color(0xffA7B3C6),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 343,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                  color: Color(0xffFC683F),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 41,
                    width: 373,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      color: Color(0xff324367),
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
