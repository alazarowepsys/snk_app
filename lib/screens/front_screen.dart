import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snk_app/widgets/sidebar.dart';
import 'package:snk_app/widgets/topbar.dart';

class FrontScreen extends StatefulWidget {

  const FrontScreen({super.key});
  
  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  
  late Random randomizer;
  late int posterNum;

  @override
  void initState() {
    super.initState();
    randomizer = Random();
    posterNum = randomizer.nextInt(6) + 1;
  }

  void changePosterNum() {
    int nextPoster = randomizer.nextInt(6) + 1;
    
    while (posterNum == nextPoster) {
      nextPoster = randomizer.nextInt(6) + 1;
    }
    
    setState(() {
      posterNum = nextPoster;
    });
  }

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(
        title: "Shingeki No Kyojin App"
      ),
      drawer: Sidebar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16  
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InkWell(
                onTap: changePosterNum,
                child: Image.asset("assets/images/poster$posterNum.png",
                  height: 500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Toca la imagen para cambiarla",
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        )
      ),
    );
  }
}