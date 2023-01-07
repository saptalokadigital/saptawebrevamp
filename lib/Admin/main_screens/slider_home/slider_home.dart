import 'package:flutter/material.dart';

class SliderHome extends StatefulWidget {
  static const String id = "slider-home";
  const SliderHome({super.key});

  @override
  State<SliderHome> createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("slider"),
    );
  }
}
