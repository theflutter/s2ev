import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/bookings_page.dart';
import 'package:s2ev_app/screens/skipped_bookings_page.dart';

class RejectedBookings extends StatelessWidget {
  const RejectedBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffE4EAF1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Text(
                            'Total Bookings',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff324367),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5943BE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 80,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffE4EAF1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Text(
                            'Total Earnings',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff324367),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '₹ 1000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5943BE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookingsPage(),
                        ),
                      ),
                      child: Container(
                        width: 110,
                        height: 108,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffE4EAF1)),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 75),
                          child: Text(
                            'Accepted ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff324367),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RejectedBookings(),
                        ),
                      ),
                      child: Container(
                        width: 110,
                        height: 108,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xff5943BE)),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 75),
                          child: Text(
                            'Rejected',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SkippedBookings(),
                        ),
                      ),
                      child: Container(
                        width: 110,
                        height: 108,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffE4EAF1)),
                        child: const Padding(
                          padding: const EdgeInsets.only(top: 75),
                          child: Text(
                            'Skipped',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff324367),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 373,
                  height: 173,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffEBEEF1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Booking ID:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff19294F),
                              ),
                            ),
                            SizedBox(width: 5),
                            const Text(
                              'S2EV5141',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff19294F),
                              ),
                            ),
                            SizedBox(width: 80),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
                              child: Container(
                                height: 31,
                                width: 119,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xffFF6533)),
                                child: const Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    'In progress',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 70),
                                    child: CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.person,
                                        size: 47,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 70),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hari',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff19294F),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Color(0xff19294F),
                                              size: 14,
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'Plot 30 NK Towers, Arunodaya Co-Operative C, Street',
                                              style: TextStyle(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff6A7C9B)),
                                            ),
                                          ],
                                        ),
                                        // Text(
                                        //   'Reason:',
                                        //   style: TextStyle(
                                        //       fontFamily: 'Outfit',
                                        //       fontSize: 10,
                                        //       fontWeight: FontWeight.w500,
                                        //       color: Color(0xff6A7C9B)),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 41,
                  width: 373,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                    color: Color(0xff324367),
                  ),
                  child: const Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          '26 May,2023 (11.30AM)',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 120),
                        Text(
                          'Cancelled by User',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 1, // Index of the current tab
        selectedItemColor: Color(0xff5943BE),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          // Handle tab tap
          // You can use setState or a state management solution to update the selected index
        },
      ),
    );
  }
}
