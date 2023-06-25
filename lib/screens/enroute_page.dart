import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/online_home_screen.dart';
import 'package:s2ev_app/widgets/slide_button_widget.dart';

class EnroutePage extends StatelessWidget {
  const EnroutePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 217,
              width: 414,
              color: Color(0xff5943BE),
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnlineHomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Booking ID: S2EV5141',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                        const Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/profile_icon.png'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Tej\n+919876543210',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 372,
                          height: 65,
                          color: Color(0xff7967CA),
                          padding: EdgeInsets.only(left: 10),
                          child: const Text(
                            'Plot 30 NK Towers, Arunodaya Co-Operative C,Street number 6,Cyber Hills colony, VIP Hills, Jaihind Enclave,\nHyderabad, Telangana 500081',
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Job Progress',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff324367),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xff5943BE),
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'You have accepted the request',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff19294F),
                  ),
                ),
              ],
            ),
            SizedBox(width: 6),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 50,
                  child:
                      VerticalDivider(color: Color(0xff909FBF), thickness: 6),
                ),
              ),
            ),
            SizedBox(width: 6),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xff909FBF),
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'You have to start the ride',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff19294F),
                  ),
                ),
              ],
            ),
            SizedBox(width: 6),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 50,
                  child:
                      VerticalDivider(color: Color(0xff909FBF), thickness: 6),
                ),
              ),
            ),
            SizedBox(width: 6),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xff909FBF),
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'You have arrived to job Location',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff19294F),
                  ),
                ),
              ],
            ),
            SizedBox(width: 6),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 50,
                  child:
                      VerticalDivider(color: Color(0xff909FBF), thickness: 6),
                ),
              ),
            ),
            SizedBox(width: 6),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xff909FBF),
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'You have Started the Job',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff19294F),
                  ),
                ),
              ],
            ),
            SizedBox(width: 6),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 50,
                  child:
                      VerticalDivider(color: Color(0xff909FBF), thickness: 6),
                ),
              ),
            ),
            SizedBox(width: 6),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xff909FBF),
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Search Your service',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff19294F),
                  ),
                ),
              ],
            ),
            SizedBox(height: 0),
            SlideButtonWidget(text: 'Slide to Start a ride'),
          ],
        ),
      ),
    );
  }
}
