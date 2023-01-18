// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String label;

  const InputWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xff171717),
        hintText: label,
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            width: 3,
            color: Colors.grey.shade900,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            width: 3,
            color: Color(0xff8b368c),
          ),
        ),
        suffix: Icon(
          Icons.check_circle_outline,
          color: Colors.white,
        ),
      ),
    );
  }
}
