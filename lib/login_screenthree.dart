import 'package:flutter/material.dart';
import 'package:practice_project/components/button_widgets/textfield.dart';
import 'package:practice_project/components/buttonfile.dart';
import 'package:practice_project/components/mytext.dart';
// import 'package:practice_project/homescreen.dart';
import 'package:practice_project/myhome_two.dart';

class login_three extends StatefulWidget {
  const login_three({super.key});

  @override
  State<login_three> createState() => _login_threeState();
}

class _login_threeState extends State<login_three> {
  TextEditingController tfcemail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: arrowBack(context),
                  ),
                  SizedBox(height: 20.0),
                  MyText(
                      title: "Recovery Password",
                      subtitle:
                          "Please Enter Your Email Address To Recieve a Verification Code"),
                  SizedBox(height: 30.0),
                  textbutton(
                    keyboardtype: TextInputType.emailAddress,
                    controller: tfcemail,
                    labelText: "email",
                    prefixIcon: const Icon(Icons.mail_outline),
                    //  hintText: "enter your email",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  button(
                      height: 60,
                      width: 290,
                      text: "Continue",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => home_two()));
                      }),
                ])));
  }
}
