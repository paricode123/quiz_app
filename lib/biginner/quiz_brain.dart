import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _numCorrect = 0;
  int _numWrong = 0;

  List<Question> _questionBank = [
    Question('Australia is a country as well as a continent.', true),
    Question('Herbivore animals consume meat.', false),
    Question('The cell nucleus was discovered by Robert Brown.', true),
    Question('The national flag of America has 51 stars.', true),
    Question('The capital of Spain is Madrid.', true),
    Question('Jupiter is the smallest planet in the solar system.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber == _questionBank.length - 1;
  }

  int getNumCorrect() {
    return _numCorrect;
  }

  int getNumWrong() {
    return _numWrong;
  }

  String getAnswerCheck() {
    if (_questionBank[_questionNumber].answeredCorrectly == true) {
      return 'check';
    } else {
      return 'close';
    }
  }

  void answer(bool answer) {
    if (answer == getCorrectAnswer()) {
      _numCorrect++;
      _questionBank[_questionNumber].answeredCorrectly = true;
    } else {
      _numWrong++;
      _questionBank[_questionNumber].answeredCorrectly = false;
    }
    nextQuestion();
  }

  void reset() {
    _questionNumber = 0;
    _numCorrect = 0;
    _numWrong = 0;
    _questionBank.forEach((question) {
      question.answeredCorrectly = false;
    });
  }

  Map<String, int> getResult() {
    return {
      'correct': _numCorrect,
      'wrong': _numWrong,
    };
  }

  bool getAnsweredCorrectly() {
    return _questionBank[_questionNumber].answeredCorrectly;
  }
}
class QuizBrainOne {
  int _questionNumber = 0;
  int _numCorrect = 0;
  int _numWrong = 0;

  List<Question> _questionBank = [
    Question('Sharks are mammals ?', false),
    Question('The blue whale is the biggest animal to have ever lived.', true),
    Question('The hummingbird egg is the world\'s smallest bird egg.', true),
    Question('An octopus has seven hearts.', false),
    Question('New York City is composed of between 36 and 42 islands.', true),
    Question('The Atlantic Ocean is the biggest ocean on Earth.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber == _questionBank.length - 1;
  }

  int getNumCorrect() {
    return _numCorrect;
  }

  int getNumWrong() {
    return _numWrong;
  }

  String getAnswerCheck() {
    if (_questionBank[_questionNumber].answeredCorrectly == true) {
      return 'check';
    } else {
      return 'close';
    }
  }

  void answer(bool answer) {
    if (answer == getCorrectAnswer()) {
      _numCorrect++;
      _questionBank[_questionNumber].answeredCorrectly = true;
    } else {
      _numWrong++;
      _questionBank[_questionNumber].answeredCorrectly = false;
    }
    nextQuestion();
  }

  void reset() {
    _questionNumber = 0;
    _numCorrect = 0;
    _numWrong = 0;
    _questionBank.forEach((question) {
      question.answeredCorrectly = false;
    });
  }

  Map<String, int> getResult() {
    return {
      'correct': _numCorrect,
      'wrong': _numWrong,
    };
  }

  bool getAnsweredCorrectly() {
    return _questionBank[_questionNumber].answeredCorrectly;
  }
}
