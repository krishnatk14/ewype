import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pinput/pinput.dart';
import 'login_phonenumber_view.dart';

class GetOTP_View extends StatefulWidget {
  const GetOTP_View({Key? key}) : super(key: key);

  @override
  State<GetOTP_View> createState() => _GetOTP_ViewState();
}

class _GetOTP_ViewState extends State<GetOTP_View> {

  var code="";
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text("Enter OTP",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text("Enter your phone number to register",style: TextStyle(fontSize: 16,),
                  textAlign: TextAlign.center,),
                SizedBox(height: 40,),
                Pinput(
                  showCursor: true,
                  length: 6,
                  onChanged: (value){
                    code=value;
                  },
                  onCompleted: (pin) => print(pin),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(onPressed: ()async{
                    try{
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(
                          verificationId: Login_PhoneNumber_View.verify, smsCode: code);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential);
                    }catch(e){

                    }
                  },
                    child: Text("Submit", style: TextStyle(fontSize: 19),),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(10)
                        )),
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, "phone", (route) => false);
                    },
                    child: Text("Edit Phone Number ?"))
              ],

            ),
          ),
        )
    );
  }
}
