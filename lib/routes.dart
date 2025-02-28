import 'package:flutter/material.dart';
import 'package:snk_app/screens/about_screen.dart';
import 'package:snk_app/screens/characters_screen.dart';
import 'package:snk_app/screens/front_screen.dart';
import 'package:snk_app/screens/hire_me_screen.dart';
import 'package:snk_app/screens/in_my_life_screen.dart';
import 'package:snk_app/screens/moments_screen.dart';

String initialRoute = "/front";

Map<String, Widget Function(BuildContext)> routes = {
  "/front": (context) => FrontScreen(),
  "/characters": (context) => CharactersScreen(),
  "/moments": (context) => MomentsScreen(),
  "/about": (context) => AboutScreen(),
  "/in-my-life": (context) => InMyLifeScreen(),
  "/hire-me": (context) => HireMeScreen(),
};