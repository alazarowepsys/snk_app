import 'package:flutter/material.dart';
import 'package:snk_app/data/characters.dart';
import 'package:snk_app/screens/character_screen.dart';
import 'package:snk_app/widgets/sidebar.dart';
import 'package:snk_app/widgets/text_image_card.dart';
import 'package:snk_app/widgets/topbar.dart';

class CharactersScreen extends StatelessWidget {

  const CharactersScreen({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(
        title: "Personajes"
      ),
      drawer: Sidebar(),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          children: <Widget>[
            ...characters.map((character) => InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CharacterScreen(character),
                ));
              },
              splashColor: Colors.black45,
              borderRadius: BorderRadius.circular(12),
              child: TextImageCard(
                text: character.name, 
                imagePath: character.imagePath
              ),
            ))
          ],
        )
      ),
    );
  }
}