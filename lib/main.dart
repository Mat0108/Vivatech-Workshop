import 'package:flutter/material.dart';
import 'package:vivatech/screens/game_quiz_page.dart';
import 'package:vivatech/screens/tutoriel_quiz_page.dart';
import 'package:vivatech/screens/games.dart';
import 'package:vivatech/screens/pass.dart';
import 'package:vivatech/screens/scanQrCode.dart';
import 'package:vivatech/components/home/home.dart';
import 'package:vivatech/screens/stand_details_page.dart';
import 'package:vivatech/screens/conference_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scene(),
      debugShowCheckedModeBanner: false,
      title: 'VivaTech',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          fontFamily: 'MuseoSans'),
      initialRoute: '/',
      routes: {
        '/stand': (context) => StandDetailsPage(),
        '/conference': (context) => const ConferenceDetailsPage(),
        '/pass': (context) => Pass(),
        '/scanner-qrcode': (context) => ScanQrCode(),
        '/jeux': (context) => Games(),
        '/jeux/quiz': (context) => const QuizScreen(),
        '/jeux/quiz/tutoriel': (context) => TutorialQuizPage(),
        // '/jeux/jeu-logique/tutoriel': (context) => GameLogicTutorial(),
        // '/jeux/jeu-logique': (context) => GameLogic(),
      },
    );
  }
}
