import 'package:flutter/material.dart';
import 'package:snk_app/widgets/sidebar.dart';
import 'package:snk_app/widgets/topbar.dart';

class InMyLifeScreen extends StatelessWidget {

  const InMyLifeScreen({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(
        title: "Shingeki No Kyojin App"
      ),
      drawer: Sidebar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("En mi vida",
              style: Theme.of(context).textTheme.titleLarge
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 200,
              height: 200,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}