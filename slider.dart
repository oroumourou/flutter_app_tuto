import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Slider(
              max: 10.0,
              divisions: 10,
              value: sliderValue, 
            onChanged: ((value) {
              setState(() {
                sliderValue = value;
              });
            })
          ],
        ),
      ),
    );
  }
}