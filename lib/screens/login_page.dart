import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s2ev_app/widgets/otp_button_widget.dart';
import 'package:s2ev_app/widgets/password_button_widget.dart';
import 'package:s2ev_app/widgets/phone_number_widget.dart';

import '../widgets/email_button_widget.dart';
import '../widgets/login_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isEmailSelected = true;
  bool isPhoneNumberSelected = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isEmailSelected = true;
                isPhoneNumberSelected = false;
              });
            },
            child: Container(
              width: 370,
              height: 44,
              decoration: BoxDecoration(
                color: isEmailSelected ? Colors.white : Colors.transparent,
                border: Border.all(
                  color: Color(0xFF5848B9),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isEmailSelected = true;
                        isPhoneNumberSelected = false;
                      });
                    },
                    child: Container(
                      width: 150,
                      alignment: Alignment.center,
                      color: isEmailSelected
                          ? Color(0xFF5848B9)
                          : Colors.transparent,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isEmailSelected
                              ? Colors.white
                              : Color(0xFF5848B9),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isEmailSelected = false;
                        isPhoneNumberSelected = true;
                      });
                    },
                    child: Container(
                      width: 150,
                      alignment: Alignment.center,
                      color: isPhoneNumberSelected
                          ? Color(0xFF5848B9)
                          : Colors.transparent,
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isPhoneNumberSelected
                              ? Colors.white
                              : Color(0xFF5848B9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isEmailSelected)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [

                  //email text button widget
                  EmailButtonWidget(emailController: emailController),

                  SizedBox(height: 23),
                  //passwrod widget
                  PasswordButtonWidget(emailController: emailController),

                  SizedBox(height: 23),

                  LoginButtonWidget(),

                  SizedBox(height: 36),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or SignUp with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/google.svg"),
                      SizedBox(width: 4),
                      Text(
                        'Google',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not registered yet?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          if (isPhoneNumberSelected)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [

                  PhoneNumberWidget(phoneNumberController: phoneNumberController),
                  
                  SizedBox(height: 17),
                  Container(
                    width: 370,
                    height: 46,

                    child: OtpButtonWidget(),

                  ),
                  SizedBox(height: 36),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or SignUp with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/google.svg"),
                      SizedBox(width: 4),
                      Text(
                        'Google',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not registered yet?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}










