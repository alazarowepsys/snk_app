import 'package:flutter/material.dart';
import 'package:snk_app/widgets/sidebar.dart';
import 'package:snk_app/widgets/topbar.dart';

class HireMeScreen extends StatelessWidget {

  const HireMeScreen({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
      appBar: Topbar(
        title: "Shingeki No Kyojin App"
      ),
      drawer: Sidebar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("¡Contratame!",
              style: Theme.of(context).textTheme.titleLarge
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 200,
              height: 200,
              child: Placeholder(),
            ),
            Text("Mis datos de contacto",
              style: Theme.of(context).textTheme.titleMedium
            ),
            SizedBox(
              height: 25,
            ),
            Text("Ariel David Lázaro Pérez",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text("Matrícula: 20230253",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text("ariellazaro@gmail.com",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )
      ),
    );
  }
}