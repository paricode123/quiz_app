import 'package:flutter/material.dart';
import 'package:quiz_app/biginner/level1_b.dart';
import 'package:quiz_app/biginner/level3_b.dart';
import 'package:quiz_app/biginner/level2_b.dart';
import 'package:quiz_app/biginner/level4_b.dart';
import 'package:quiz_app/biginner/level5_b.dart';
import 'package:quiz_app/biginner/level6_b.dart';


class ChoosePage extends StatelessWidget {
  const ChoosePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Beginner Level',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quizzler()),
              );
            },
            child: Image.asset('image/one.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelTwo()),
              );
            },
            child: Image.asset('image/two.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelThree()),
              );
            },
            child: Image.asset('image/three.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Levelfour()),
              );
            },
            child: Image.asset('image/four.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Levelfive()),
              );
            },
            child: Image.asset('image/five.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelSix()),
              );
            },
            child: Image.asset('image/six.png',),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelSix()),
              );
            },
            child: Image.asset('image/seven.png',),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelSix()),
              );
            },
            child: Image.asset('image/eight.png',),
          ),
        ],
      ),
    );
  }
}