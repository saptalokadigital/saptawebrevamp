import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: const BoxDecoration(
        color: Color(0xff013088),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: screenSize.width,
                height: 558,
                margin: const EdgeInsets.only(top: 142),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image_1.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 226,
            height: 224.06,
            margin: const EdgeInsets.only(left: 79),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo_banner.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
