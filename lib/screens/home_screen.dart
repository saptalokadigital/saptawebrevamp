import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/screens/about_us/about_us_screens.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/solutions_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/it_solution.dart';

import 'package:saptaloka_web_revamp/widgets/card.dart';
import 'package:saptaloka_web_revamp/widgets/carousel_home.dart';
import 'package:saptaloka_web_revamp/widgets/core_values.dart';
import 'package:saptaloka_web_revamp/widgets/satisfied_client.dart';

import 'package:saptaloka_web_revamp/widgets/header_widget.dart';

import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/latest_news.dart';
import 'package:styled_text/styled_text.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/Home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
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

    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 70),
            child: Container(
              alignment: Alignment.topCenter,
              width: screenSize.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo_header.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Flexible(
                      child: Stack(
                        children: [
                          TextButton(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[0] = true
                                    : _isHovering[0] = false;
                              });
                            },
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, AboutUsScreens.routeName);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => AboutUsScreens()));--
                            },
                            child: Text(
                              'About Us',
                              style: GoogleFonts.inter(
                                color: _isHovering[0]
                                    ? const Color(0xff013088)
                                    : const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 33,
                    ),
                    _isHovering[1]
                        ? InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[1] = true
                                    : _isHovering[1] = false;
                              });
                            },
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, SolutionsScreen.routeName);
                            },
                            child: Container(
                              width: 95,
                              child: Row(
                                children: [
                                  Text(
                                    'Solutions',
                                    style: GoogleFonts.inter(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.transparent,
                                  )
                                ],
                              ),
                            ),
                          )
                        : InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[1] = true
                                    : _isHovering[1] = false;
                              });
                            },
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, SolutionsScreen.routeName);
                            },
                            child: Container(
                              width: 95,
                              child: Row(
                                children: [
                                  Text(
                                    'Solutions',
                                    style: GoogleFonts.inter(
                                      color: _isHovering[1]
                                          ? const Color(0xff013088)
                                          : const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: _isHovering[1]
                                        ? const Color(0xff013088)
                                        : const Color.fromARGB(255, 0, 0, 0),
                                  )
                                ],
                              ),
                            ),
                          ),
                    SizedBox(width: 22),
                    Flexible(
                      child: TextButton(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, ContactUsScreen.routeName);
                        },
                        child: Text(
                          'Contact Us',
                          style: GoogleFonts.inter(
                            color: _isHovering[2]
                                ? const Color(0xff013088)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Column(
                      children: [
                        Text(
                          "Latest News",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const LatestNews(),
                      ],
                    ),
                    Footer(),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Hover Menu AppBar Solutions
        _isHovering[1]
            ? Padding(
                padding: const EdgeInsets.only(left: 283, right: 100, top: 23),
                child: Container(
                  width: 230,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, SolutionsScreen.routeName);
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Solutions',
                                  style: GoogleFonts.inter(
                                    color: _isHovering[1]
                                        ? const Color(0xff013088)
                                        : const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: _isHovering[1]
                                      ? const Color(0xff013088)
                                      : const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 3,
                                  decoration: BoxDecoration(color: Colors.blue),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 15, bottom: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  Navigator
                                                      .pushReplacementNamed(
                                                          context,
                                                          ItSolutionScreen
                                                              .routeName);
                                                },
                                                child: Text(
                                                  'IT Solution',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  Navigator
                                                      .pushReplacementNamed(
                                                          context,
                                                          SolutionsScreen
                                                              .routeName);
                                                },
                                                child: Text(
                                                  'Business Digital Solution',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  Navigator
                                                      .pushReplacementNamed(
                                                          context,
                                                          SolutionsScreen
                                                              .routeName);
                                                },
                                                child: Text(
                                                  'Digital Marketing',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
