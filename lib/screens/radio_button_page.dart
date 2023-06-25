import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:s2ev_app/screens/completed_services.dart';
import 'package:s2ev_app/widgets/otp_button_widget.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({Key? key}) : super(key: key);

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    List<RadioListTile<int>> radioListTiles = [];

    for (int i = 0; i < 5; i++) {
      radioListTiles.add(
        RadioListTile<int>(
          value: i,
          groupValue: selectedValue,
          title: Text('hi'),
          onChanged: (value) => setState(() => selectedValue = value!),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 392,
            width: 382,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Color(0xffF8F8F8),
            ),
            child: Column(
              children: [
                const Text(
                  'Select a reason to cancel a job',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Outfit',
                    color: Color(0xff19294F),
                  ),
                ),
                SizedBox(height: 8), // Adjust the height as needed
                ...radioListTiles,
                SizedBox(
                  height: 40,
                ),
                OtpButtonWidget(
                  text: 'Submit',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompletedServices(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
