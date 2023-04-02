import 'package:flutter/material.dart';
import 'package:quiz_app/intermidiate/level1_i.dart';
import 'package:quiz_app/intermidiate/level2_i.dart';
import 'package:quiz_app/intermidiate/level3_i.dart';
import 'package:quiz_app/intermidiate/level4_i.dart';
import 'package:quiz_app/intermidiate/level5_i.dart';
import 'package:quiz_app/intermidiate/level6_i.dart';
import 'package:quiz_app/intermidiate/level7_i.dart';
import 'package:quiz_app/intermidiate/level8_i.dart';

class ChoiceLevel extends StatelessWidget {
  const ChoiceLevel({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => LevelOneIn()),
              );
            },
            child: Image.asset('image/one.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelTwoIn()),
              );
            },
            child: Image.asset('image/two.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelThreeIn()),
              );
            },
            child: Image.asset('image/three.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelFourIn()),
              );
            },
            child: Image.asset('image/four.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelFiveIn()),
              );
            },
            child: Image.asset('image/five.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelSixIn()),
              );
            },
            child: Image.asset('image/six.png',),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelSevenIn()),
              );
            },
            child: Image.asset('image/seven.png',),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelEightIn()),
              );
            },
            child: Image.asset('image/eight.png',),
          ),
        ],
      ),
    );
  }
}
