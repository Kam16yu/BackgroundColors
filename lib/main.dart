import 'package:backgroundcolors/app/page/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Main());
}

/// Root of your application.
class Main extends StatelessWidget {
  ///Constructor, acquire key
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}