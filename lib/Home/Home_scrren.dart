import 'dart:math';

import 'package:flutter/material.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0;

  List l1 = [
    Colors.cyan,
    Colors.pink,
    Colors.black,
    Colors.white,
    Colors.amber,
    Colors.purple,
    Colors.indigo,
    Colors.teal,
    Colors.green,
    Colors.red,
    Colors.brown,
    Colors.yellow,
    Colors.deepOrange,
    Colors.lightGreenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Text
            Text(
              "Color Palette \n   Generator",
              style: TextStyle(
                color: Color(0xff3BB3F9),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Box
            Column(
              children: [
                Container(
                  height: 75,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: l1[a],
                  ),
                ),
                colorbox(l1[b]),
                colorbox(l1[c]),
                colorbox(l1[d]),
                colorbox(l1[e]),
                Container(
                  height: 75,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: l1[f],
                  ),
                ),
              ],
            ),
            //Generate
            InkWell(
              onTap: () {

                setState(() {
                  Random rnd = Random();
                  a = rnd.nextInt(14);
                  b = rnd.nextInt(14);
                  while(b==a)
                    {
                      b = rnd.nextInt(14);
                    }
                  c = rnd.nextInt(14);
                  while(c==b || c==a)
                    {
                      c = rnd.nextInt(14);
                    }
                  d = rnd.nextInt(14);
                  while(d==c || d==b || d==a)
                    {
                      d = rnd.nextInt(14);
                    }
                  e = rnd.nextInt(14);
                  while(e==d || e==c || e==b || e==a)
                    {
                      e = rnd.nextInt(14);
                    }
                  f = rnd.nextInt(14);
                  while(f==e || e==d || e==c || e==b || e==a)
                    {
                      f = rnd.nextInt(14);
                    }
                });
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Color(0xff3BB3F9),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(color: Color(0xff3BB3F9), fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorbox(Color l1) {
    return Container(
      height: 75,
      width: 125,
      color: l1,
    );
  }
}
