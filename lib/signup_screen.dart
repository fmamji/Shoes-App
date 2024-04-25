import 'package:flutter/material.dart';
import 'package:practice_project/components/button_widgets/textfield.dart';
import 'package:practice_project/components/button_widgets/widgets_components/utils_widgets.dart';
import 'package:practice_project/components/buttonfile.dart';
import 'package:practice_project/components/constant_components.dart/image_constant.dart';
import 'package:practice_project/components/mytext.dart';
import 'package:practice_project/homescreen.dart';
// import 'package:practice_project/login_screenthree.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController tfcname = TextEditingController();
  TextEditingController tfcemail = TextEditingController();
  TextEditingController tfcpassword = TextEditingController();

  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  bool toggle = false;
  void _tooglePasswordVisiblity() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  void dispose() {
    super.dispose();
    tfcname.dispose();
    tfcemail.dispose();
    tfcpassword.dispose();
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: arrowBack(context),
                  ),
                  const SizedBox(height: 20.0),
                  MyText(
                      title: "Create Account",
                      subtitle: "Lets Create Account Together"),
                  const SizedBox(height: 30.0),
                  textbutton(
                    keyboardtype: TextInputType.emailAddress,
                    controller: tfcname,
                    labelText: "Your Name",
                    hintext: "enter your email",
                    prefixIcon: const Icon(Icons.mail_outline),
                    focusNode: nameFocusNode,
                    onSubmitted: (p0) {
                      Utils.fieldfocus(context, nameFocusNode, emailFocusNode);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textbutton(
                    keyboardtype: TextInputType.emailAddress,
                    controller: tfcemail,
                    labelText: "email",
                    prefixIcon: const Icon(Icons.mail_outline),
                    hintext: "enter your email",
                    focusNode: emailFocusNode,
                    onSubmitted: (p0) {
                      Utils.fieldfocus(
                          context, emailFocusNode, passwordFocusNode);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textbutton(
                    keyboardtype: TextInputType.emailAddress,
                    controller: tfcemail,
                    obscureText: !toggle,
                    labelText: "password",
                    hintext: "enter your email",
                    prefixIcon: const Icon(Icons.password),
                    focusNode: passwordFocusNode,
                    suffixicon: IconButton(
                      onPressed: _tooglePasswordVisiblity,
                      icon: toggle
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  button(
                      height: 60,
                      width: 220,
                      text: "Sign Up",
                      onTap: () {
                        if (tfcname.text.isEmpty) {
                          Utils.appSnackBar(
                              context, "Please Enter Your Full Name!");
                        } else if (tfcname.text.isEmpty) {
                          Utils.appSnackBar(
                              context, "Please Enter Your Valid Email!");
                        } else if (tfcname.text.isEmpty) {
                          Utils.appSnackBar(
                              context, "Please Enter Valid Password! ");
                        } else if (tfcpassword.text.length < 6) {
                          Utils.appSnackBar(context,
                              "Password must be greater than 6 characters");
                        } else {
                          Utils.appSnackBar(context, "SignUp Successfully");
                        }
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  button_two(
                      // height: 60,
                      // width: 300,
                      // text: "Sign in with google",
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImage.googleLogo),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Sign In With Google",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppin",
                            color: Colors.black),
                      )
                    ],
                  )),
                  const SizedBox(
                    height: 80,
                  ),

                  richedText(
                      text01: "Already Have An Account?",
                      text02: "Sign In",
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => signup()));
                      }),
                  // const Center(
                  //   child: Text("Already Have An Account? Sign In"),
                  // )
                ])));
  }
}
