import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/billing_page.dart';
import 'package:s2ev_app/screens/enroute_page.dart';

class SlideArrive extends StatefulWidget {
  const SlideArrive({super.key});

  @override
  State<SlideArrive> createState() => _SlideArriveState();
}

class _SlideArriveState extends State<SlideArrive> {
  BuildContext? scaffoldContext;

  @override
  Widget build(BuildContext context) {
    scaffoldContext = context;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 61,
            width: 414,
            color: Color(0xffE4EAF1),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: EdgeInsetsDirectional.only(top: 15),
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnroutePage(),
                        ),
                      );
                    },
                  ),
                ),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Job Location',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff324367),
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    // Open the bottom drawer after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      showModalBottomSheet(
        context: scaffoldContext!,
        builder: (context) {
          return Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/profile_icon.png'),
                                ),
                                SizedBox(
                                    width:
                                        10), // Adjust the spacing between the CircleAvatar and the Text
                                Text(
                                  'Tej\n+919876543210',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff19294F),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Positioned(
                              top: 84,
                              left: 10,
                              child: Container(
                                height: 122,
                                width: 368,
                                decoration: BoxDecoration(
                                  color: Color(0xffF1F5FA),
                                  borderRadius: BorderRadius.circular(3.73),
                                ),
                                padding: EdgeInsets.all(25),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Sector 80, Gurugram, Haryana',
                                          style: TextStyle(
                                            color: Color(0xff19294F),
                                            fontFamily: 'Outfit',
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(width: 30),
                                        Text(
                                          '4 km',
                                          style: TextStyle(
                                              color: Color(0xff19294F),
                                              fontFamily: 'Outfit',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            10), // Adjust the spacing between the texts
                                    Row(
                                      children: [
                                        Text(
                                          'Fairmont Hotel, Bush St',
                                          style: TextStyle(
                                            color: Color(0xff19294F),
                                            fontFamily: 'Outfit',
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                20), // Adjust the spacing between the texts
                                        Text(
                                          '2.25 km',
                                          style: TextStyle(
                                              color: Color(0xff19294F),
                                              fontFamily: 'Outfit',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            SizedBox(height: 3),
                            Container(
                              width: 360,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Color(0xFFFC683F),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: GestureDetector(
                                onHorizontalDragEnd: (DragEndDetails details) {
                                  if (details.velocity.pixelsPerSecond.dx > 0) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BillingPage()),
                                    );
                                  }
                                },
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.arrow_right,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Slide to Arrive',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Outfit'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
