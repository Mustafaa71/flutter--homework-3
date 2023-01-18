// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final AssetImage image;
  const ReusableCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        height: 70.0,
        width: 100.0,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff1d1d1d)),
          borderRadius: BorderRadius.circular(18.0),
          color: Color(0xff171717),
        ),
        child: Image(
          color: Colors.white,
          image: image,
        ),
      ),
    );
  }
}
