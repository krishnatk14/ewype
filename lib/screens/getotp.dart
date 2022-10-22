import 'package:flutter/material.dart';

import '../view/getotp_view.dart';

class GetOTP extends StatefulWidget {
  GetOTP({Key? key}) : super(key: key);

  @override
  State<GetOTP> createState() => _GetOTPState();
}

class _GetOTPState extends State<GetOTP> {
  @override
  Widget build(BuildContext context) {
    return GetOTP_View();
  }
}
