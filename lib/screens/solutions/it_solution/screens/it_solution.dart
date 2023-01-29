import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/router_const.dart';
import 'package:saptaloka_web_revamp/screens/about_us/about_us_screens.dart';
import 'package:saptaloka_web_revamp/screens/solutions/it_solution/widgets/card_solution.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/it_solution/widgets/awalan_it_solution.dart';
import 'package:saptaloka_web_revamp/screens/solutions/it_solution/widgets/digital_assesment.dart';
import 'package:saptaloka_web_revamp/screens/solutions/it_solution/widgets/e_commerce.dart';
import 'package:saptaloka_web_revamp/screens/solutions/it_solution/widgets/software_services.dart';
import 'package:saptaloka_web_revamp/screens/solutions/solutions_screen.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/drawer.dart';

class ItSolutionScreen extends StatefulWidget {
  const ItSolutionScreen({super.key});

  @override
  State<ItSolutionScreen> createState() => _ItSolutionScreenState();
}

class _ItSolutionScreenState extends State<ItSolutionScreen> {
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
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Responsive(
          large: Scaffold(
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
                          context.go('/');
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/logo_header.png'),
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
                                context.go(aboutUsRoute);
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
                                context.go(solutionsRoute);
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
                                context.go(solutionsRoute);
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
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
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
                            context.go(contactUsRoute);
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
            body: AnimateIfVisibleWrapper(
              showItemInterval: Duration(milliseconds: 500),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      // Header Nya
                      AwalanSolutions(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Column(
                        children: [
                          Text(
                            "Software Services",
                            style: GoogleFonts.inter(
                              color: const Color(0xff013088),
                              textStyle: const TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          ),
                        ],
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Card Dan Hover Nya
                      SoftwareServices(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Container(
                        child: Column(
                          children: [
                            Text(
                              "Digital Assessment",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Isi Digital Assesement
                      //DigitalAssesment(),
                      const SizedBox(
                        height: 50,
                      ),

                      // E-Commerce
                      /* Container(
                        // decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Text(
                              "E-Commerce",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),
                      //ECommerce(),
                      SizedBox(
                        height: 20,
                      ),

                      // Footer
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          desktop: Scaffold(
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
                          context.go('/');
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/logo_header.png'),
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
                                context.go(aboutUsRoute);
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
                                context.go(solutionsRoute);
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
                                context.go(solutionsRoute);
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
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
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
                            context.go(contactUsRoute);
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
            body: AnimateIfVisibleWrapper(
              showItemInterval: Duration(milliseconds: 500),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      // Header Nya
                      AwalanSolutions(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Column(
                        children: [
                          Text(
                            "Software Services",
                            style: GoogleFonts.inter(
                              color: const Color(0xff013088),
                              textStyle: const TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          ),
                        ],
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Card Dan Hover Nya
                      SoftwareServices(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Container(
                        child: Column(
                          children: [
                            Text(
                              "Digital Assessment",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Isi Digital Assesement
                      //DigitalAssesment(),
                      const SizedBox(
                        height: 50,
                      ),

                      // E-Commerce
                      /* Container(
                        // decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Text(
                              "E-Commerce",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),
                      //ECommerce(),
                      SizedBox(
                        height: 20,
                      ),

                      // Footer
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          tablet: Scaffold(
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
                          context.go('/');
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/logo_header.png'),
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
                                context.go(aboutUsRoute);
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
                                context.go(solutionsRoute);
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
                                context.go(solutionsRoute);
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
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
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
                            context.go(contactUsRoute);
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
            body: AnimateIfVisibleWrapper(
              showItemInterval: Duration(milliseconds: 500),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      // Header Nya
                      AwalanSolutions(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Column(
                        children: [
                          Text(
                            "Software Services",
                            style: GoogleFonts.inter(
                              color: const Color(0xff013088),
                              textStyle: const TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          ),
                        ],
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Card Dan Hover Nya
                      SoftwareServices(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Container(
                        child: Column(
                          children: [
                            Text(
                              "Digital Assessment",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Isi Digital Assesement
                      //DigitalAssesment(),
                      const SizedBox(
                        height: 50,
                      ),

                      // E-Commerce
                      /* Container(
                        // decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Text(
                              "E-Commerce",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),
                      //ECommerce(),
                      SizedBox(
                        height: 20,
                      ),

                      // Footer
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          mobile: Scaffold(
            appBar: AppBar(
              leading: Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Image.asset('assets/images/logo_header.png')),
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Color(0xff019CDE)),
            ),
            endDrawer: MenuDraw(),
            body: AnimateIfVisibleWrapper(
              showItemInterval: Duration(milliseconds: 500),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      // Header Nya
                      AwalanSolutions(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Column(
                        children: [
                          Text(
                            "Software Services",
                            style: GoogleFonts.inter(
                              color: const Color(0xff013088),
                              textStyle: const TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                          ),
                        ],
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Card Dan Hover Nya
                      SoftwareServices(),
                      const SizedBox(
                        height: 50,
                      ),
                      /* Container(
                        child: Column(
                          children: [
                            Text(
                              "Digital Assessment",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),

                      // Isi Digital Assesement
                      //DigitalAssesment(),
                      const SizedBox(
                        height: 50,
                      ),

                      // E-Commerce
                      /* Container(
                        // decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Text(
                              "E-Commerce",
                              style: GoogleFonts.inter(
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), */
                      const SizedBox(
                        height: 50,
                      ),
                      //ECommerce(),
                      SizedBox(
                        height: 20,
                      ),

                      // Footer
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
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
                      context.go(solutionsRoute);
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
                                                  context.go(itSolutionsRoute);
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
                                                  context.go(bDSolutionsRoute);
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
                                                  context.go(solutionsRoute);
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
