import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_PhoneNumber_View extends StatefulWidget {
  Login_PhoneNumber_View({Key? key}) : super(key: key);

  static String verify="";

  @override
  State<Login_PhoneNumber_View> createState() => _Login_PhoneNumber_ViewState();
}

class _Login_PhoneNumber_ViewState extends State<Login_PhoneNumber_View> {

  TextEditingController countrycode = TextEditingController();
  var phone="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countrycode.text="+91";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login via Phone"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/phone_otp.png"),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              //Image.asset("assets/images/phone_otp", height: 100, width: 100),
              Text("Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("Enter your phone number to register",style: TextStyle(fontSize: 16,),
                textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children:[
                    SizedBox(width: 10,),
                    SizedBox(
                        width:40,
                        child: TextField(
                          enabled: false,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "${countrycode.text}"
                          ),
                        )),
                    SizedBox(width: 10,),
                    Text("|", style: TextStyle(fontSize: 33, color: Colors.grey),),
                    SizedBox(width: 10,),
                    Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          //controller: phone,
                          onChanged: (value){
                            phone=value;
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Phone Number"
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(onPressed: ()async{
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${countrycode.text+phone}',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      Login_PhoneNumber_View.verify = verificationId;
                      Navigator.pushNamed(context, "otp");
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );

                },
                  child: Text("Get OTP", style: TextStyle(fontSize: 19),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10)
                      )),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }

}
