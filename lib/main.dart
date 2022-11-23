import 'package:background_colors/app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

/// Core of application
class Main extends StatelessWidget {
  ///Constructor, acquire key
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random background color',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}
