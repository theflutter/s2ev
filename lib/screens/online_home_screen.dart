import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/bookings_page.dart';
import 'package:s2ev_app/screens/completed_services.dart';
import 'package:s2ev_app/screens/enroute_page.dart';
import 'package:s2ev_app/screens/ongoing_service_page.dart';
import 'package:s2ev_app/screens/unresolved_services_page.dart';
import 'package:s2ev_app/widgets/decline_button_widget.dart';
import 'package:s2ev_app/widgets/select_date_widget.dart';

class OnlineHomePage extends StatefulWidget {
  @override
  State<OnlineHomePage> createState() => _OnlineHomePageState();
}

class _OnlineHomePageState extends State<OnlineHomePage> {
  bool isOn = false;
  int currentIndex = 0;

  BuildContext? scaffoldContext; // Member variable to store the context

  @override
  Widget build(BuildContext context) {
    scaffoldContext = context; // Save the context

    return Scaffold(
      appBar: AppBar(
        title: Text('Hari\nHari@gmail.com'),
        leading: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE4EAF1),
          ),
          child: CircleAvatar(),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Switch(
              activeColor: Color(0xff5943BE),
              value: isOn,
              onChanged: (_isOn) {
                setState(() {
                  isOn = _isOn;
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.all(10),
            child: const Text(
              'Todays Earnings',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w800,
                color: Color(0xff324367),
              ),
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              // Handle navigation to another page here
              // For example, you can use the Navigator to push a new route
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OngoingServicePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffE4EAF1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ongoing Services',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff324367),
                      fontFamily: 'Outfit',
                    ),
                  ),
                  Icon(Icons.expand_more),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle navigation to another page here
              // For example, you can use the Navigator to push a new route
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UnresolvedServices()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffE4EAF1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Unresolved Services',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff324367),
                      fontFamily: 'Outfit',
                    ),
                  ),
                  Icon(Icons.expand_more),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle navigation to another page here
              // For example, you can use the Navigator to push a new route
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CompletedServices()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffE4EAF1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Completed Services',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff324367),
                      fontFamily: 'Outfit',
                    ),
                  ),
                  Icon(Icons.expand_more),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingsPage(),
            ),
          );
        },
        showSelectedLabels: true,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
          ),
        ],
      ),
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
            appBar: AppBar(
              title: const Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    'Job Request   Issue: Chain Failure | MODEL-F ',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      fontFamily: 'Outfit',
                      color: Color(0xff19294F),
                    ),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                const Padding(
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
                            const Row(
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
                            SizedBox(height: 15),
                            const Text(
                              'Plot 30 NK Towers, Arunodaya Co-Operative C, Street number 6,\nCyber Hills colony, VIP Hills, Hyderabad, Telangana 500081',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6A7C9B),
                              ),
                            ),
                            SizedBox(height: 10),
                            const Text(
                              'Select Slot',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff324367),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(height: 10),
                                (SelectDateWidget(
                                    text: 'Select Date ', onTap: () {})),
                                SizedBox(width: 30),
                                (SelectDateWidget(
                                    text: 'Select Time ', onTap: () {})),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                SizedBox(height: 15),
                                DeclineButtonWidget(
                                  text: 'Decline',
                                  onTap: () {},
                                  colors: Color(0xff909FBF),
                                ),
                                SizedBox(width: 30),
                                DeclineButtonWidget(
                                  text: 'Accept',
                                  colors: Color(0xffFC683F),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EnroutePage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
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
