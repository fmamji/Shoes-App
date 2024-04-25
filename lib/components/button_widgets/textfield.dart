//  import 'dart:ui';

import 'package:flutter/material.dart';

Widget textbutton(
    {TextInputType? keyboardtype,
    TextEditingController? controller,
    bool? obscureText,
    String? labelText,
    Widget? prefixicon,
    Widget? suffixicon,
    required Icon prefixIcon,
    String? hintext,
    FocusNode? focusNode,
    void Function(String)? onSubmitted})
// void function (String)? onSubmitted}
{
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        keyboardType: keyboardtype,
        controller: controller,
        obscureText: obscureText ?? false,
        obscuringCharacter: "*",
        focusNode: focusNode,
        onSubmitted: onSubmitted,
        style: const TextStyle(color: Colors.black, fontSize: 14.0),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(22.0),
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            hintText: hintext,
            // labelText: labelText,
            // labelStyle: TextStyle(color: Colors.black),
            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),

            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.black),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            suffixIcon: suffixicon,
            prefixIcon: prefixicon),
      ));
}

Widget richedText({
  text01,
  text02,
  void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: RichText(
          text: TextSpan(
              text: text01,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              children: [
            TextSpan(
                text: text01,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black))
          ])),
    ),
  );
}
