import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green, Colors.yellow])),
      child: const Image(
          height: 350.0,
          width: double.infinity,
          image: AssetImage('assets/perrito.jpg')),
    );
  }
}
