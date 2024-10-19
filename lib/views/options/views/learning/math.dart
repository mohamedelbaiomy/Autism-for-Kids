import 'package:flutter/material.dart';

class MathScreen extends StatelessWidget {
  const MathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            Image(
              height: 180,
              width: 350,
              image: AssetImage("assets/learning_options/math/Math.jpeg"),
            ),
          ],
        ),
      ),
    );
  }
}
