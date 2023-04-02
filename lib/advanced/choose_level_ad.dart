import 'package:flutter/material.dart';
import 'package:quiz_app/advanced/level1_a.dart';
import 'package:quiz_app/advanced/level2_a.dart';
import 'package:quiz_app/advanced/level3_a.dart';
import 'package:quiz_app/advanced/level4_a.dart';
import 'package:quiz_app/advanced/level5_a.dart';
import 'package:quiz_app/advanced/level6_a.dart';
import 'package:quiz_app/advanced/level7_a.dart';
import 'package:quiz_app/advanced/level8_a.dart';


class SelectLevel extends StatelessWidget {
  const SelectLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelOneAd()),
              );
            },
            child: Image.asset('image/one.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelTwoAd()),
              );
            },
            child: Image.asset('image/two.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelThreeAd()),
              );
            },
            child: Image.asset('image/three.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelFourAd()),
              );
            },
            child: Image.asset('image/four.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelFiveAd()),
              );
            },
            child: Image.asset('image/five.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelSixAd()),
              );
            },
            child: Image.asset('image/six.png',),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelSevenAd()),
              );
            },
            child: Image.asset('image/seven.png',),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelEightAd()),
              );
            },
            child: Image.asset('image/eight.png',),
          ),
        ],
      ),
    );
  }
}
