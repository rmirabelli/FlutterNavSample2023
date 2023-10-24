import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _sliderValue = 0.0;
  void _sliderChanged(double newValue) {
    setState(() {
      _sliderValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Slider(value: _sliderValue, onChanged: _sliderChanged)],
    );
  }
}
