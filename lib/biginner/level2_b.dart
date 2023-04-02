import 'package:flutter/material.dart';
import 'package:quiz_app/biginner/quiz_brain.dart';

class LevelTwo extends StatefulWidget {
  const LevelTwo({Key? key}) : super(key: key);

  @override
  State<LevelTwo> createState() => _LevelTwoState();
}

class _LevelTwoState extends State<LevelTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}
class _QuizPageState extends State<QuizPage> {
  QuizBrainOne quizBrainOne = QuizBrainOne();
  List<Icon> scoreKeeper = [];
  int _remainingSeconds = 30;
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrainOne.getCorrectAnswer();

    setState(() {
      if (quizBrainOne.isFinished()) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            Map<String, int> result = quizBrainOne.getResult();

            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text(
                'Quiz Finished',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Correct Answers: ${result['correct']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Wrong Answers: ${result['wrong']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. False - they are actually classified as fish.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '2. True - and that includes dinosaurs!',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '3. True',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '4. False - it has three hearts and they do a lot of work. One heart circulates blood around the body and the other two pump blood past the gills and pick up oxygen.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '5. True - New York has three main islands: Manhattan Island, Staten Island and part of Long Island, and it also has a number of smaller islands within each borough.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '6. False - the Pacific Ocean is the largest ocean covering more than 60 million square miles.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            );

          },
        );
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizBrainOne.answer(userPickedAnswer);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrainOne.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                checkAnswer(true);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55),
                  side: BorderSide(width: 3.0, color: Colors.green),
                ),
              ),
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                checkAnswer(false);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55),
                  side: BorderSide(width: 3.0, color: Colors.red),
                ),
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 40,),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
