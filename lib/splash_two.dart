import 'package:flutter/material.dart';
// import 'package:flutter_tutorial/HomeScreen.dart';
// import 'package:flutter_tutorial/login.dart';
import 'package:practice_project/login.dart';

class Splash_two extends StatefulWidget {
  const Splash_two({super.key});

  @override
  State<Splash_two> createState() => _Splash_twoState();
}

class _Splash_twoState extends State<Splash_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          // padding: EdgeInsets.symmetric(vertical: 100),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY6jfvzijp_nMSRcLy-akr1V85HInboL1Ckw&s"),
                ),
              ),
              Container(
                child: Text(
                  "Start journey  with Nike",
                  style: TextStyle(fontSize: 50, color: Colors.deepOrange),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Smart , Gorgeous And  Fashionable Collection ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text("Get Started",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
