import 'package:flutter/material.dart';

class Utils {
  static appSnackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.red));
  }

  static void fieldfocus(
      BuildContext context, FocusNode currentNode, FocusNode nextNode) {
    currentNode.unfocus();

    FocusScope.of(context).requestFocus(nextNode);
  }
}
