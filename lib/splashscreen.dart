import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_tutorial/HomeScreen.dart';
// import 'package:flutter_tutorial/HomeScreen.dart';
// import 'package:flutter_tutorial/login.dart';
// import 'package:flutter_tutorial/splash_screen2.dart';
import 'package:practice_project/splash_two.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Splash_two()),
          (route) => false);
    });

    return Scaffold(
      appBar: AppBar(title: Text("SplashScreen")),
      body: Center(
        child: Image(
            image: NetworkImage(
                "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg")),
        // child: Column(
        //   children: [
        //     Container(
        //       child: InkWell(
        //           onTap: () {
        //             Navigator.of(context).push(
        //                 MaterialPageRoute(builder: (context) => LoginScreen()));
//                   },
//                   child: const Text(
//                     "Tech Brothers",
//                     style: TextStyle(
//                       color: Colors.black12,

//                       // fontSize:  FontWeight.bold),
//                     ),
//                   )),
//             )
//           ],
//         ),
      ),
    );
  }
}
