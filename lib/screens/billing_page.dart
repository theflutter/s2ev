import 'package:flutter/material.dart';
import 'package:s2ev_app/screens/service_completed_page.dart';
import 'package:s2ev_app/widgets/bill_page_widget.dart';
import 'package:s2ev_app/widgets/otp_button_widget.dart';

class BillingPage extends StatelessWidget {
  const BillingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
                height: 46,
                width: 366,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xffE4EAF1),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Color(0xff6A7C9B),
                      ),
                    ),
                    const Text(
                      'Search your service',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.normal,
                        color: Color(0xff6A7C9B),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 292,
                width: 368,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xffF2F2F2),
                ),
              ),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Issues Found',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w800,
                      color: Color(0xff324367),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BillPageWidget(text1: 'Chain Failure', text2: '106'),

              const SizedBox(height: 150),
              
              OtpButtonWidget(
                  text: 'Send Bill to Customer',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServiceCompletedPage(),
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
