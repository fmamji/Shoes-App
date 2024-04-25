// import 'dart:ffi';

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget button(
    {double? height,
    double? width,
    String? text,
    Color? btntextcolor,
    void Function()? onTap,
    Widget? child,
    Gradient? gradient}) {
  return InkWell(
    onTap: onTap,
    child: Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0), color: Colors.green),
        child: child ??
            Center(
              child: Text(
                text!,
                style: TextStyle(color: Colors.white),
              ),
            ),
      ),
    ),
  );
}

Widget button_two({
  double? height,
  double? width,
  String? text,
  Widget? child,
  void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0), color: Colors.white),
        child: child ??
            Center(
              child: Text(
                text!,
                style: TextStyle(color: Colors.black),
              ),
            ),
      ),
    ),
  );
}

Widget arrowBack(BuildContext? context) {
  return Container(
    height: 40,
    width: 35,
    decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    child: Center(
        child: IconButton(
            onPressed: () {
              Navigator.of(context!).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined))),
  );
}
