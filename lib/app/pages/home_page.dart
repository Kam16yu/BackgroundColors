import 'package:background_colors/app/utils/random_colors.dart';
import 'package:flutter/material.dart';

///Home page of your application
class HomePage extends StatefulWidget {
  ///Constructor, acquire key, app bar text
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;
  final double fontSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GestureDetector(
        //Detecting tap
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Color applyColor = randomColorGenerator();
          while (backgroundColor == applyColor) {
            applyColor = randomColorGenerator();
          }
          setState(() {
            backgroundColor = applyColor;
          });
        },
        //Text in the middle of the screen
        child: Center(
          child: Text(
            style: TextStyle(
              fontSize: fontSize,
              color: Color(
                Colors.white.value - backgroundColor.value + Colors.black.value,
              ),
            ),
            'Hey there',
          ),
        ),
      ),
    );
  }
}
