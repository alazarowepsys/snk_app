import 'package:flutter/material.dart';
import 'package:snk_app/data/moments.dart';
import 'package:snk_app/screens/moment_screen.dart';
import 'package:snk_app/widgets/sidebar.dart';
import 'package:snk_app/widgets/text_image_wide_card.dart';
import 'package:snk_app/widgets/topbar.dart';

class MomentsScreen extends StatelessWidget {

  const MomentsScreen({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(
        title: "Momentos"
      ),
      drawer: Sidebar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ...moments.map((moment) => InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MomentScreen(moment),
                ));
              },
              borderRadius: BorderRadius.circular(16),
              splashColor: Colors.black45,
              child: TextImageWideCard(
                text: moment.title,
                imagePath: moment.imagePath
              ),
            ))
          ],
        ),
      ),
    );
  }
}