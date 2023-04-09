import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double CurrentValue = 150.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300.0,
          child: Center(
              child: Image(
            height: CurrentValue,
            image: const AssetImage('assets/perrito.jpg'),
          )),
        ),
        Slider(
            label: '$CurrentValue',
            divisions: 8,
            value: CurrentValue,
            max: 300.0,
            min: 50.0,
            onChanged: (value) {
              setState(() {
                CurrentValue = value;
              });
            })
      ],
    );
  }
}
