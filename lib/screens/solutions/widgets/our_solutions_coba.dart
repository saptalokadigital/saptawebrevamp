import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/router_const.dart';
import 'package:saptaloka_web_revamp/screens/solutions/it_solution/screens/it_solution.dart';
import 'package:go_router/go_router.dart';

class OurSolutionsCoba extends StatefulWidget {
  const OurSolutionsCoba({super.key});

  @override
  State<OurSolutionsCoba> createState() => _OurSolutionsState();
}

class _OurSolutionsState extends State<OurSolutionsCoba> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: AnimateIfVisible(
                      key: const Key('item.8'),
                      duration: const Duration(milliseconds: 1000),
                      builder:
                          (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(-0.5, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: CardSolution(
                              fct: () {
                                context.go(itSolutionsRoute);
                              },
                              title: "IT Solution",
                              image: "assets/images/image_1.png",
                              desc:
                                  'Layanan terbaik untuk kebutuhan solusi IT terintegrasi (Software Development). Mulai dari website, aplikasi multiplatform dan game.',
                              link: '',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 30),
                  Flexible(
                    child: AnimateIfVisible(
                      key: const Key('item.9'),
                      duration: const Duration(milliseconds: 1000),
                      builder:
                          (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0.5, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: CardSolution(
                              fct: () {
                                context.go(bDSolutionsRoute);
                              },
                              title: "Business Digital Solution",
                              image:
                                  "assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg",
                              desc:
                                  'Layanan jasa pembuatan Enterprise Resource Planning (ERP) dan Manufacturing Execution Systems (MES) untuk berbagai industri.',
                              link: '',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: AnimateIfVisible(
                key: const Key('item.10'),
                duration: const Duration(milliseconds: 1000),
                builder: (BuildContext context, Animation<double> animation) {
                  return FadeTransition(
                    opacity: Tween<double>(
                      begin: 0,
                      end: 1,
                    ).animate(animation),
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.5),
                        end: Offset.zero,
                      ).animate(animation),
                      child: CardSolution(
                        fct: () {},
                        title: "Digital Marketing",
                        image:
                            "assets/images/marketing-strategy-connting-digital-devices-concept.jpg",
                        desc:
                            'Layanan jasa Social Media Marketing, Website Landing Page, dan lainnya untuk bisnis Anda.',
                        link: '',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      mobile: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            AnimateIfVisible(
              key: const Key('item.8'),
              duration: const Duration(milliseconds: 1000),
              builder: (BuildContext context, Animation<double> animation) {
                return FadeTransition(
                  opacity: Tween<double>(
                    begin: 0,
                    end: 1,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-0.5, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: CardSolutionMobile(
                      fct: () {
                        context.go(itSolutionsRoute);
                      },
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      desc:
                          'Layanan terbaik untuk kebutuhan solusi IT terintegrasi (Software Development). Mulai dari website, aplikasi multiplatform dan game.',
                      link: '',
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            AnimateIfVisible(
              key: const Key('item.9'),
              duration: const Duration(milliseconds: 1000),
              builder: (BuildContext context, Animation<double> animation) {
                return FadeTransition(
                  opacity: Tween<double>(
                    begin: 0,
                    end: 1,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0.5, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: CardSolutionMobile(
                      fct: () {
                        context.go(bDSolutionsRoute);
                      },
                      title: "Business Digital Solution",
                      image:
                          "assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg",
                      desc:
                          'Layanan jasa pembuatan Enterprise Resource Planning (ERP) dan Manufacturing Execution Systems (MES) untuk berbagai industri.',
                      link: '',
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            AnimateIfVisible(
              key: const Key('item.10'),
              duration: const Duration(milliseconds: 1000),
              builder: (BuildContext context, Animation<double> animation) {
                return FadeTransition(
                  opacity: Tween<double>(
                    begin: 0,
                    end: 1,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-0.5, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: CardSolutionMobile(
                      fct: () {},
                      title: "Digital Marketing",
                      image:
                          "assets/images/marketing-strategy-connting-digital-devices-concept.jpg",
                      desc:
                          'Layanan jasa Social Media Marketing, Website Landing Page, dan lainnya untuk bisnis Anda.',
                      link: '',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
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
                  Flexible(
                    child: AnimateIfVisible(
                      key: const Key('item.8'),
                      duration: const Duration(milliseconds: 1000),
                      builder:
                          (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(-0.5, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: CardSolution(
                              fct: () {
                                context.go(itSolutionsRoute);
                              },
                              title: "IT Solution",
                              image: "assets/images/image_1.png",
                              desc:
                                  'Layanan terbaik untuk kebutuhan solusi IT terintegrasi (Software Development). Mulai dari website, aplikasi multiplatform dan game.',
                              link: '',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 30),
                  Flexible(
                    child: AnimateIfVisible(
                      key: const Key('item.9'),
                      duration: const Duration(milliseconds: 1000),
                      builder:
                          (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0.5, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: CardSolution(
                              fct: () {
                                context.go(bDSolutionsRoute);
                              },
                              title: "Business Digital Solution",
                              image:
                                  "assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg",
                              desc:
                                  'Layanan jasa pembuatan Enterprise Resource Planning (ERP) dan Manufacturing Execution Systems (MES) untuk berbagai industri.',
                              link: '',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: AnimateIfVisible(
                key: const Key('item.10'),
                duration: const Duration(milliseconds: 1000),
                builder: (BuildContext context, Animation<double> animation) {
                  return FadeTransition(
                    opacity: Tween<double>(
                      begin: 0,
                      end: 1,
                    ).animate(animation),
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.5),
                        end: Offset.zero,
                      ).animate(animation),
                      child: CardSolution(
                        fct: () {},
                        title: "Digital Marketing",
                        image:
                            "assets/images/marketing-strategy-connting-digital-devices-concept.jpg",
                        desc:
                            'Layanan jasa Social Media Marketing, Website Landing Page, dan lainnya untuk bisnis Anda.',
                        link: '',
                      ),
                    ),
                  );
                },
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
                  Flexible(
                    child: AnimateIfVisible(
                      key: const Key('item.8'),
                      duration: const Duration(milliseconds: 1000),
                      builder:
                          (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(-0.5, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: CardSolution(
                              fct: () {
                                context.go(itSolutionsRoute);
                              },
                              title: "IT Solution",
                              image: "assets/images/image_1.png",
                              desc:
                                  'Layanan terbaik untuk kebutuhan solusi IT terintegrasi (Software Development). Mulai dari website, aplikasi multiplatform dan game.',
                              link: '',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 30),
                  Flexible(
                    child: AnimateIfVisible(
                      key: const Key('item.9'),
                      duration: const Duration(milliseconds: 1000),
                      builder:
                          (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0.5, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: CardSolution(
                              fct: () {
                                context.go(bDSolutionsRoute);
                              },
                              title: "Business Digital Solution",
                              image:
                                  "assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg",
                              desc:
                                  'Layanan jasa pembuatan Enterprise Resource Planning (ERP) dan Manufacturing Execution Systems (MES) untuk berbagai industri.',
                              link: '',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: AnimateIfVisible(
                key: const Key('item.10'),
                duration: const Duration(milliseconds: 1000),
                builder: (BuildContext context, Animation<double> animation) {
                  return FadeTransition(
                    opacity: Tween<double>(
                      begin: 0,
                      end: 1,
                    ).animate(animation),
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.5),
                        end: Offset.zero,
                      ).animate(animation),
                      child: CardSolution(
                        fct: () {},
                        title: "Digital Marketing",
                        image:
                            "assets/images/marketing-strategy-connting-digital-devices-concept.jpg",
                        desc:
                            'Layanan jasa Social Media Marketing, Website Landing Page, dan lainnya untuk bisnis Anda.',
                        link: '',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSolution extends StatefulWidget {
  final String title;
  final String image;
  final String desc;
  final String link;
  final Function fct;
  const CardSolution({
    super.key,
    required this.title,
    required this.image,
    required this.desc,
    required this.link,
    required this.fct,
  });

  @override
  State<CardSolution> createState() => _CardSolutionState();
}

class _CardSolutionState extends State<CardSolution> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      width: 530,
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
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(2, 10),
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: GoogleFonts.inter(
                              fontSize: 30,
                              color: const Color(0xff013088),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.desc,
                            maxLines: 3,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Color.fromARGB(255, 38, 40, 43),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardSolutionMobile extends StatefulWidget {
  final String title;
  final String image;
  final String desc;
  final String link;
  final Function fct;
  const CardSolutionMobile({
    super.key,
    required this.title,
    required this.image,
    required this.desc,
    required this.link,
    required this.fct,
  });

  @override
  State<CardSolutionMobile> createState() => _CardSolutionMobileState();
}

class _CardSolutionMobileState extends State<CardSolutionMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 300,
      child: Center(
        child: InkWell(
          onHover: (isHovering) {},
          onTap: () {
            widget.fct();
          },
          child: Container(
            height: 254,
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                  offset: const Offset(2, 10),
                )
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
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 114,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: const Color(0xff013088),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.desc,
                          maxLines: 3,
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: Color.fromARGB(255, 38, 40, 43),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
