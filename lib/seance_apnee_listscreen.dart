import 'package:flutter/material.dart';

class SeanceApneeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Mes Séances d'apnée"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Apnée Statique 1'),
          ),
          ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('Apnée Statique 2'),
          ),
        ],
      )
    );
  }
}