import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class NeonPage extends StatelessWidget {
  const NeonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200.0,
        width: double.infinity,
        color: Colors.black,
        child: Neon(
          text: 'Neon Retro',
          color: Colors.green,
          font: NeonFont.Membra,
          flickeringText: true,
          flickeringLetters: [0, 3, 6],
        ),
      ),
    );
  }
}
