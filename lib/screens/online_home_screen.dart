import 'package:flutter/material.dart';

class OnlineHomePage extends StatefulWidget {
  @override
  State<OnlineHomePage> createState() => _OnlineHomePageState();
}

class _OnlineHomePageState extends State<OnlineHomePage> {
  bool isOn = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Column(
            children: [
              Text('Hari'),
              Text('hari@gmail.com'),
            ],
          ),
        ),
        leading: CircleAvatar(),
      ),
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
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffE4EAF1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ongoing Services',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff324367),
                        fontFamily: 'Outfit'),
                  ),
                  Icon(Icons.expand_more),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffE4EAF1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Unresolved Services',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff324367),
                        fontFamily: 'Outfit'),
                  ),
                  Icon(Icons.expand_more),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffE4EAF1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Completed Services',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff324367),
                        fontFamily: 'Outfit'),
                  ),
                  Icon(Icons.expand_more),
                ],
              ),
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
