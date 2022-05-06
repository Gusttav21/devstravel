import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomAppBar() {
  return AppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      title: Text(
        'Decimal to Binary & Vice Versa',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
      ));
}
