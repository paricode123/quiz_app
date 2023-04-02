import 'package:flutter/material.dart';
import 'package:quiz_app/biginner/choose_level.dart';
import 'package:quiz_app/intermidiate/choose_level_in.dart';
import 'package:quiz_app/advanced/choose_level_ad.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 120,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Let\'s Play",
                  style: TextStyle(
                      color: Color(0xFFF35D7A),
                      fontSize: 45,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Be the first!",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 90,),
              Container(
                height: 170,
                width: 370,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFED6F9F), Color(0xFFEB8B6B)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'image/biginner.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Beginner',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChoosePage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 37),
              Container(
                height: 170,
                width: 370,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF5771EC), Color(0xFF05BCFE)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'image/intermidiate.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Intermediate',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChoiceLevel()),
                    );
                  },
                ),
              ),
              SizedBox(height: 37),
              Container(
                height: 170,
                width: 370,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFA38CD0), Color(0xFFFBC2EB)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'image/advance.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Advanced',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectLevel()),
                    );
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }
}