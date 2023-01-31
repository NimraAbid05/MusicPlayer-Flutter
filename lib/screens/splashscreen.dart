import 'package:flutter/material.dart';
import 'package:music_app/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstraint.bgcolor,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 210.0, right: 80.0, left: 80.0, bottom: 20.0),
              child: Image.asset("images/logo.png"),
            ),
            Text(
              "Open the world of music",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorsConstraint.title),
            )
          ],
        ),
      ),
    );
  }
}
