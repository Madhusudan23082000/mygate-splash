import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

Widget appBarDesign(BuildContext context, String value) {
  return GradientAppBar(
    title: Text(value,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () => Navigator.of(context).pop(),
    ),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.deepOrange, Colors.pink]
    ),
  );
}
