import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(
            pause: const Duration(seconds: 2),
            totalRepeatCount: 1,
            animatedTexts: [
              TyperAnimatedText(
                'NETFLIX',
                textStyle: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 100.0,
                    color: Colors.red.shade700),
              )
            ]),
      ),
    );
  }
}
