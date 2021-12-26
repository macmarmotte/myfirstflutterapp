import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/favoriteChangeNotifier.dart';
import 'package:myfirstflutterapp/favoriteWidget.dart';
import 'package:myfirstflutterapp/seance_apnee_metadata.dart';
import 'package:provider/provider.dart';

class SeanceApnee extends StatelessWidget {

  const SeanceApnee({key, required this.seanceApnee_metadata}) : super(key: key);
  final SeanceApnee_metadata seanceApnee_metadata; //permet de l'utiliser après : recipe.xxx

  @override

  Widget build(BuildContext context) {
    Widget titleSection =  Container(
      padding:const EdgeInsets.all(8),
      child: Row(
          children: [
            Expanded(
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(seanceApnee_metadata.title,
                        style:TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Text(seanceApnee_metadata.user,
                      style:TextStyle(
                          color: Colors.grey, fontSize: 16)),
                ],
              ),
            ),
            //FavoriteWidget(isFavorited: true, favoriteCount: 10)
            FavoriteIconWidget(),
            FavoriteTextWidget()
          ],
      ),
    );

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.comment, "Comment" ),
          _buildButtonColumn(Colors.green, Icons.share, "Share" ),
        ],
      ),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(seanceApnee_metadata.description, softWrap: true),
    );

    return ChangeNotifierProvider(
      create: (context)=> FavoriteChangeNotifier(seanceApnee_metadata.isFavorite, seanceApnee_metadata.favoriteCount),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Apnée Plaisir"),
        ),
        body: ListView(
          children: [
            Image.asset(
              seanceApnee_metadata.imageUrl,
              width: 600,
              height: 240,
              fit:BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            descriptionSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom:8),
            child:Icon(icon, color:color)
        ),
        Text(label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color:color)
        ),
      ],
    );
  }

}
