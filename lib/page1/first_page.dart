// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_homework_3/page1/components1/reusable_card.dart';
import 'package:flutter_homework_3/page1/components1/reusable_input.dart';
import 'package:flutter_homework_3/page2/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff101010),
        leading: const Icon(
          Icons.arrow_circle_left_outlined,
          size: 40.0,
        ),
        title: const Text(
          'Log in',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 130.0, top: 70.0),
            child: Text(
              "Log in with one of the following options",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15.0),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    image: AssetImage('images/google.png'),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  image: AssetImage('images/apple.png'),
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 330.0, top: 15.0),
            child: Text(
              "Email",
              style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: InputWidget(
              label: 'Enter Your Email',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            margin: EdgeInsets.only(right: 300.0, top: 15.0),
            child: Text(
              "Password",
              style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: InputWidget(
              label: 'Enter Your Password',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => SecondPage()),
              ),
            ),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(15, 40, 15, 0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xffbd1ace),
              ),
              child: Center(
                  child: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 8.0),
                Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
