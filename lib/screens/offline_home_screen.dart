import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/online_home_screen.dart';

class OfflineHomePage extends StatefulWidget {
  @override
  State<OfflineHomePage> createState() => _OfflineHomePageState();
}

class _OfflineHomePageState extends State<OfflineHomePage> {
  bool isOn = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 379,
                    height: 44,
                    child: Switch(
                      activeColor: Color(0xff5943BE),
                      value: isOn,
                      onChanged: (_isOn) {
                        setState(() {
                          isOn = _isOn;
                        });
                        if (_isOn) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnlineHomePage(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'My Profile'),
        ],
      ),
    );
  }
}
