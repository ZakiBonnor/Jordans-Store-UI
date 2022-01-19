import 'package:flutter/material.dart';
import 'package:jordans_store_ui/pages/home_page.dart';
import 'package:jordans_store_ui/pages/profile_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context) => HomePage(),
      '/profile':(context) => ProfilePage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'Whats is your name?',
    'How old are you?',
  ];
  var questionIndex = 0;
  void answeredQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    print('answer chosen');
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Naruto"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => answeredQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answeredQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answeredQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
