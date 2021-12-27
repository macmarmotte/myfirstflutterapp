import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/seance_apnee_screen.dart';
import 'package:myfirstflutterapp/seance_apnee_listscreen.dart';
import 'package:myfirstflutterapp/seance_apnee_metadata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SeanceApneeListScreen()
    );
  }
}

/*
      home: SeanceApnee(seanceApnee_metadata : SeanceApnee_metadata(
          "Mes Replays",
          "Apnee Statique par Philippe Valentin",
          "Images/logo_teams.png",
          "On apprend beaucoup avec les séances de Philippe Valentin",
          false,
          15
      )),
    );
*/

