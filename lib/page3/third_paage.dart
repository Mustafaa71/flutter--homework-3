// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_homework_3/page1/first_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 90.0, left: 20, right: 20, bottom: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.scatter_plot_outlined,
                  color: Color(0xff7b7b7b),
                  size: 35,
                ),
                Spacer(),
                GestureDetector(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) => FirstPage())))),
                  child: Icon(
                    Icons.person,
                    color: Color(0xff7b7b7b),
                    size: 35,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 60.0, bottom: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello DEV",
                        style: TextStyle(fontSize: 50.0, fontFamily: "Bebas_Neue", fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.bar_chart_outlined,
                    color: Color(0xff7b7b7b),
                    size: 30.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color(0xffc0dedd),
                    ),
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.percent,
                              size: 40.0,
                            ),
                            Text(
                              "250K",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text("Sales")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color(0xffe6dff1),
                    ),
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 40.0,
                            ),
                            Text(
                              "8.549K",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text("Customers")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color(0xfff0eee8),
                    ),
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.web_rounded,
                              size: 40.0,
                            ),
                            Text(
                              "1.430k",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text("Products")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color(0xfff1dedf),
                    ),
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.pie_chart,
                              size: 40.0,
                            ),
                            Text(
                              "\$9745",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text("Revenue")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
