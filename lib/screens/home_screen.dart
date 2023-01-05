import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:saptaloka_web_revamp/widgets/card.dart';
import 'package:saptaloka_web_revamp/widgets/carousel_home.dart';
import 'package:saptaloka_web_revamp/widgets/core_values.dart';
import 'package:saptaloka_web_revamp/widgets/satisfied_client.dart';

import 'package:saptaloka_web_revamp/widgets/header_widget.dart';

import 'package:styled_text/styled_text.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Controllers
  late ScrollController _scrollController;
  double pixels = 0.0;

  @override
  void initState() {
    // initialize scroll controllers
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: HeaderWidget(),
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        // decoration: const BoxDecoration(
        //   color: Color(0xff013088),
        // ),
        child: WebSmoothScroll(
          controller: _scrollController,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _scrollController,
            child: Column(
              children: [
                Column(
                  children: [
                    CarouselHome(),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Through digital transformation, our solutions will take your business to the next level",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const CardHome(),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const CoreValues(),
                const SizedBox(
                  height: 70,
                ),
                Column(
                  children: [
                    Text(
                      "Our Satisfied Client",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const SatisfiedClient(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
