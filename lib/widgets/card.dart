import 'dart:html';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/it_solution.dart';

class CardHome extends StatefulWidget {
  const CardHome({super.key});

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  final List _isHovering = [
    false,
    false,
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
    return Responsive(
      large: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      fct: () {
                        Navigator.pushReplacementNamed(
                            context, ItSolutionScreen.routeName);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ItemCard(
                        title: "Business Digital Solution",
                        image: "assets/images/image_1.png",
                        fct: () {}),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "Digital Marketing",
                      image: "assets/images/image_1.png",
                      fct: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      desktop: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      fct: () {
                        Navigator.pushReplacementNamed(
                            context, ItSolutionScreen.routeName);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ItemCard(
                        title: "Business Digital Solution",
                        image: "assets/images/image_1.png",
                        fct: () {}),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "Digital Marketing",
                      image: "assets/images/image_1.png",
                      fct: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            Container(
              height: 700,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      fct: () {
                        Navigator.pushReplacementNamed(
                            context, ItSolutionScreen.routeName);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ItemCard(
                        title: "Business Digital Solution",
                        image: "assets/images/image_1.png",
                        fct: () {}),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ItemCard(
                      title: "Digital Marketing",
                      image: "assets/images/image_1.png",
                      fct: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            /* Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "Digital Marketing",
                      image: "assets/images/image_1.png",
                      fct: () {},
                    ),
                  ),
                ],
              ),
            ), */
          ],
        ),
      ),
      mobile: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            Container(
              height: 700,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      fct: () {
                        Navigator.pushReplacementNamed(
                            context, ItSolutionScreen.routeName);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ItemCard(
                        title: "Business Digital Solution",
                        image: "assets/images/image_1.png",
                        fct: () {}),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ItemCard(
                      title: "Digital Marketing",
                      image: "assets/images/image_1.png",
                      fct: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            /* Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ItemCard(
                      title: "Digital Marketing",
                      image: "assets/images/image_1.png",
                      fct: () {},
                    ),
                  ),
                ],
              ),
            ), */
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  final String title;
  final String image;
  final Function fct;
  const ItemCard({
    super.key,
    required this.title,
    required this.image,
    required this.fct,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 430,
      child: Center(
        child: InkWell(
          onHover: (isHovering) {
            if (isHovering) {
              setState(() {
                scale = 1.05;
              });
            } else {
              setState(() {
                scale = 1;
              });
            }
          },
          onTap: () {
            widget.fct();
          },
          child: AnimatedScale(
            scale: scale,
            duration: const Duration(milliseconds: 300),
            child: Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(2, 10))
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(widget.title,
                                style: GoogleFonts.inter(
                                  fontSize: 22,
                                  color: const Color(0xff013088),
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // _isHovering[widget.hoverIndex]
          //     ? Container(
          //         height: 230,
          //         width: 390,
          //         decoration: BoxDecoration(boxShadow: [
          //           BoxShadow(
          //               color: Colors.black.withOpacity(0.2),
          //               blurRadius: 5,
          //               offset: Offset(2, 15))
          //         ], borderRadius: BorderRadius.circular(15)),
          //         child: Column(
          //           children: [
          //             Container(
          //                 height: 160,
          //                 color: Colors.blue,
          //                 child: Image.asset(
          //                   'assets/images/image_1.png',
          //                   fit: BoxFit.cover,
          //                 )),
          //             Container(
          //               height: 70,
          //               color: Colors.white,
          //               child: Padding(
          //                 padding: const EdgeInsets.only(left: 40),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   children: [
          //                     Text("Digital Solution",
          //                         style: GoogleFonts.inter(
          //                           fontSize: 33,
          //                           color: Color(0xff013088),
          //                           fontWeight: FontWeight.bold,
          //                         ))
          //                   ],
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       )
          //     : Container(
          //         height: 200,
          //         width: 360,
          //         decoration: BoxDecoration(boxShadow: [
          //           BoxShadow(
          //               color: Colors.black.withOpacity(0.2),
          //               blurRadius: 5,
          //               offset: Offset(2, 10))
          //         ], borderRadius: BorderRadius.circular(15)),
          //         child: Column(
          //           children: [
          //             Container(
          //               height: 140,
          //               color: Colors.blue,
          //               child: Image.asset(
          //                 'assets/images/image_1.png',
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //             Container(
          //               height: 60,
          //               color: Colors.white,
          //               child: Padding(
          //                 padding: const EdgeInsets.only(left: 40),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   children: [
          //                     Text("Digital Solution",
          //                         style: GoogleFonts.inter(
          //                           fontSize: 30,
          //                           color: Color(0xff013088),
          //                           fontWeight: FontWeight.bold,
          //                         ))
          //                   ],
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //    )
        ),
      ),
    );
  }
}
