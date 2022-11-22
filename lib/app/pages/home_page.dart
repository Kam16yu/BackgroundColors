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
  Color? backgroundColor;
  final double textBorderRounding = 10.0;

  @override
  void initState() {
    super.initState();
    //Setting random color when run app
    backgroundColor = randomColorGenerator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GestureDetector(
        //Detecting tap
        behavior: HitTestBehavior.opaque,
        onTap: () => {
          setState(() {
            backgroundColor = randomColorGenerator();
          })
        },
        child: Center(
          child: Card(
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(),
              borderRadius: BorderRadius.circular(textBorderRounding),
            ),
            child: const Text(
              style: TextStyle(fontSize: 20.0),
              'Hey there',
            ),
          ),
        ),
      ),
    );
  }
}
