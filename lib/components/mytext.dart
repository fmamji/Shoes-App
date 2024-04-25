import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget MyText({title, subtitle}) {
  return Center(
    child: Column(
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontFamily: "Poppin",
                fontWeight: FontWeight.w500)),
        SizedBox(
          height: 15,
        ),
        Text(subtitle,
            style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontFamily: "Poppin",
                fontWeight: FontWeight.w400)),
      ],
    ),
  );
}
