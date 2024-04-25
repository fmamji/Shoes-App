import 'package:flutter/material.dart';
// import 'package:flutter_tutorial/Components/button_widget/mytext.dart';
// import 'package:flutter_tutorial/Components/button_widget/textfieldbutton.dart';
// import 'package:flutter_tutorial/Components/buttonfile.dart';
import 'package:practice_project/components/button_widgets/textfield.dart';
import 'package:practice_project/components/button_widgets/widgets_components/utils_widgets.dart';
import 'package:practice_project/components/buttonfile.dart';
import 'package:practice_project/components/constant_components.dart/image_constant.dart';
import 'package:practice_project/components/mytext.dart';
import 'package:practice_project/forget_screen.dart';
import 'package:practice_project/homescreen.dart';
// import 'package:practice_project/loginscreen_two.dart';
import 'package:practice_project/signup_screen.dart';
// import 'package:flutter_tutorial/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController tfcemail = TextEditingController();
  TextEditingController tfcpassword = TextEditingController();
  bool toggle = false;

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  void _tooglePasswordVisiblity() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "Login Screen",
          style: TextStyle(
            color: Colors.black26,
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    title: "Hello Again!",
                    subtitle: "Welcome Back You’ve Been Missed!"),
                SizedBox(height: 30.0),

                textbutton(
                    keyboardtype: TextInputType.emailAddress,
                    controller: tfcemail,
                    labelText: "email",
                    hintext: "enter your email",
                    prefixIcon: const Icon(Icons.mail_outline),
                    focusNode: emailFocusNode,
                    onSubmitted: (op) {
                      Utils.fieldfocus(
                          context, emailFocusNode, passwordFocusNode);
                    }),
                SizedBox(
                  height: 20,
                ),

                textbutton(
                  keyboardtype: TextInputType.emailAddress,
                  controller: tfcemail,
                  labelText: "password",
                  prefixIcon: const Icon(Icons.password),
                  suffixicon: IconButton(
                    onPressed: _tooglePasswordVisiblity,
                    icon: toggle
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                  ),
                  // hintText: "enter your email",
                ),
                // TextField(
                //   decoration: InputDecoration(labelText: "User NAME"),
                // ),

                // Column(
                //   children: [

                // TextField(
                //   decoration:
                //       InputDecoration(labelText: "Password"),
                // ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const ForgetScreen()),
                        ));
                      },
                      child: Text("Recovery Password"),
                    )),
                const SizedBox(
                  height: 20,
                ),
                button(
                    height: 60,
                    width: 300,
                    text: "Sign In",
                    onTap: () {
                      if (tfcemail.text.isEmpty) {
                        Utils.appSnackBar(
                            context, "Please Enter a Valid Email!");
                      } else if (tfcpassword.text.isEmpty) {
                        Utils.appSnackBar(context, "Please Enter A Full Name");
                      } else if (tfcpassword.text.length < 6) {
                        Utils.appSnackBar(context,
                            "password must be greater than 6 characters!");
                      } else {
                        Utils.appSnackBar(context, "Login Successfully");
                      }
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    }),

                SizedBox(
                  height: 20,
                ),
                button(
                    height: 40,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImage.googleLogo),
                        SizedBox(
                          width: 45,
                        ),
                        Text(
                          "Sign In With Google",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      ],
                    )),

                richedText(
                    text01: "Dont Have An Account? Sign Up For Free?",
                    text02: "Sign Up For Free",
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => signup()));
                    }),
              ])),
      // // Container(
      // //   color: Colors.green,

      // //   child:
      // InkWell(
      //   onTap: () {
      //     Navigator.of(context).push(MaterialPageRoute(
      //         builder: (context) => HomeScreen()));
      //   },
      //   child: Text(
      //     "Login",
      //     style: TextStyle(color: Colors.white, fontSize: 40),
      //   ),
      // ),
      // ElevatedButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, 'HomeScreen');
      //   },
    );
  }
}
