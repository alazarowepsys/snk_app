import 'package:flutter/material.dart';
import 'package:snk_app/routes.dart';
import 'package:snk_app/screens/front_screen.dart';
import 'package:snk_app/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SNK App',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const FrontScreen(),
      initialRoute: initialRoute,
      routes: routes,
    );
  }
}