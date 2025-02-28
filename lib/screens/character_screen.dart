import 'package:flutter/material.dart';
import 'package:snk_app/models/character.dart';

class CharacterScreen extends StatelessWidget {

  final Character character;

  const CharacterScreen(this.character, {
    super.key,
    });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        title: Text("Personaje: ${character.name}",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Ditty",
            fontSize: 24
          ),
        ),
        backgroundColor: Color(0xFF403535),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20
          ),
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(character.name,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Image.asset(character.imagePath,
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(character.description,
              textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}