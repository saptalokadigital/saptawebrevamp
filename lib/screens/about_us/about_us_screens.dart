import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/router_const.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/our_team.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/story_saptaloka.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/visi_misi.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/weare_wedo.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/drawer.dart';

class AboutUsScreens extends StatefulWidget {
  const AboutUsScreens({super.key});

  @override
  State<AboutUsScreens> createState() => _AboutUsScreensState();
}

class _AboutUsScreensState extends State<AboutUsScreens> {
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
  late ScrollController _scrollController;
  double pixels = 0.0;

  @override
  void initState() {
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
        Responsive(
          large: Scaffold(
            backgroundColor: Colors.white,
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
                controller: _scrollController,
                child: Column(
                  children: const [
                    StorySaptaloka(),
                    SizedBox(
                      height: 50,
                    ),
                    WeAreWedo(),
                    SizedBox(
                      height: 50,
                    ),
                    VisiMisi(),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Footer()
                  ],
                ),
              ),
            ),
          ),
          desktop: Scaffold(
            backgroundColor: Colors.white,
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
                controller: _scrollController,
                child: Column(
                  children: const [
                    StorySaptaloka(),
                    SizedBox(
                      height: 50,
                    ),
                    WeAreWedo(),
                    SizedBox(
                      height: 50,
                    ),
                    VisiMisi(),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Footer()
                  ],
                ),
              ),
            ),
          ),
          tablet: Scaffold(
            backgroundColor: Colors.white,
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
                controller: _scrollController,
                child: Column(
                  children: const [
                    StorySaptaloka(),
                    SizedBox(
                      height: 50,
                    ),
                    WeAreWedo(),
                    SizedBox(
                      height: 50,
                    ),
                    VisiMisi(),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Footer()
                  ],
                ),
              ),
            ),
          ),
          mobile: Scaffold(
            backgroundColor: Colors.white,
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
                controller: _scrollController,
                child: Column(
                  children: const [
                    StorySaptaloka(),
                    SizedBox(
                      height: 50,
                    ),
                    WeAreWedo(),
                    SizedBox(
                      height: 50,
                    ),
                    VisiMisi(),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Footer()
                  ],
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
