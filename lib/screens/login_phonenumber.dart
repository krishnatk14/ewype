import 'package:flutter/material.dart';

import '../view/login_phonenumber_view.dart';

class Login_PhoneNumber extends StatefulWidget {
  const Login_PhoneNumber({Key? key}) : super(key: key);

  @override
  State<Login_PhoneNumber> createState() => _Login_PhoneNumberState();
}

class _Login_PhoneNumberState extends State<Login_PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Login_PhoneNumber_View();
  }
}
