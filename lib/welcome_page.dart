import 'package:flutter/material.dart';
import 'section_page.dart';

class QuizAppWelcomePage extends StatelessWidget {
  final String title;
  final String description;

  QuizAppWelcomePage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFf7fbfd), Color(0xFF8fd3fe)],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image(
                width: 990,
                image: AssetImage('image/logo.png'),

              ),
            ),
            Text(
              'Have fun. Do Quiz',
              style: TextStyle(
                fontSize: 40.0,
                color: Color(0xFFF35D7A),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80,),
            ElevatedButton(
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
