import 'package:flutter/material.dart';
import 'package:practice_project/components/buttonfile.dart';

class home_two extends StatefulWidget {
  const home_two({super.key});

  @override
  State<home_two> createState() => _home_twoState();
}

class _home_twoState extends State<home_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
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
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Lookin for shoes",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {},
                  )
                ])));
  }
}
