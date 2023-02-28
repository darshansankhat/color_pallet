import 'package:color_pallet/Home/Home_scrren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => Home_scrren(),
      },
    ),
  );
}
