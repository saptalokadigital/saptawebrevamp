import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

import '../global_methods.dart';

class CarouselHome extends StatefulWidget {
  const CarouselHome({super.key});

  @override
  State<CarouselHome> createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  late ScrollController _controller;
  CarouselController buttonCarouselController = CarouselController();
  double pixels = 0.0;
  bool startAnimation = false;
  bool isHovering = false;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
      });
    });
  }

  CollectionReference ref =
      FirebaseFirestore.instance.collection('SliderContent');

  List<String> title = [
    'Saptaloka Digital',
    'Heheheh',
    'Naon maneh?',
  ];

  List<String> text = [
    'Saptaloka Digital adalah jasa konsultan IT, Bisnis dan Digital Marketing sadhjasfhsja djfejsdfhdsjkhf df hdjksf hkdsjf hdsjk sdj hdjs fjsdfjdksfhjksdfh',
    'Saptaloka Digital adalah jasa konsultan IT, Bisnis dan Digital Marketing sadhjasfhsja djfejsdfhdsjkhf df hdjksf hkdsjf hdsjk sdj hdjs fjsdfjdksfhjksdfh',
    'Saptaloka Digital adalah jasa konsultan IT, Bisnis dan Digital Marketing sadhjasfhsja djfejsdfhdsjkhf df hdjksf hkdsjf hdsjk sdj hdjs fjsdfjdksfhjksdfh',
  ];

  List<String> image = [
    'assets/images/fotojaringan.png',
    'assets/images/logo_gede.png',
    'assets/images/logo_gede.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 558,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider.builder(
                  carouselController: buttonCarouselController,
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String docId = snapshot.data!.docs[index].id;
                    String judul = homeInfo['judul'];
                    String desc = homeInfo['deskripsi'];

                    String imageUrl = homeInfo['imageUrl'];

                    return Stack(
                      children: [
                        AnimatedContainer(
                          height: 500,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 500),
                          transform: Matrix4.translationValues(0, 1, 0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(imageUrl),
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.85),
                                              BlendMode.dstATop),
                                          fit: BoxFit.contain),
                                    ),
                                  )
                                      .animate()
                                      .slideX(delay: 1000.ms)
                                      .fade(duration: 1000.ms),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 500,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      judul,
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        color: Color(0xff013088),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42,
                                      ),
                                    )
                                        .animate()
                                        .slideY(delay: 1500.ms)
                                        .fade(duration: 1500.ms),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      desc,
                                      maxLines: 10,
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    )
                                        .animate()
                                        .slideY(delay: 1500.ms)
                                        .fade(duration: 1500.ms),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        HoverWidget(
                          hoverChild: Container(
                            height: 500,
                            color: Colors.white.withOpacity(0.20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      buttonCarouselController.previousPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.linear),
                                  icon: const Icon(
                                    Icons.arrow_back_rounded,
                                    size: 30,
                                  ),
                                )
                                    .animate()
                                    .slideX(delay: 100.ms)
                                    .fade(duration: 300.ms),
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      buttonCarouselController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.linear),
                                  icon: const Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 30,
                                  ),
                                )
                                    .animate()
                                    .slideX(delay: 100.ms)
                                    .fade(duration: 300.ms),
                              ],
                            ),
                          ),
                          onHover: (e) {},
                          child: Container(
                            height: 500,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    height: 500,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: true,
                  ),
                  itemCount: snapshot.data!.docs.length,
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
      desktop: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 558,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.orderBy('createdAt', descending: true).snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              } else if (snapshot.data != null || snapshot.hasData) {
                return CarouselSlider.builder(
                  carouselController: buttonCarouselController,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String? docId = snapshot.data!.docs[index].id;
                    String? judul = homeInfo['judul'];
                    String? desc = homeInfo['deskripsi'];

                    String? imageUrl = homeInfo['imageUrl'];

                    return Stack(
                      children: [
                        AnimatedContainer(
                          height: 500,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 500),
                          transform: Matrix4.translationValues(0, 1, 0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(imageUrl ??
                                              'assets/images/fotojaringan.png'),
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.85),
                                              BlendMode.dstATop),
                                          fit: BoxFit.contain),
                                    ),
                                  )
                                      .animate()
                                      .slideX(delay: 1000.ms)
                                      .fade(duration: 1000.ms),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 500,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      judul ?? 'Saptaloka Digital',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        color: Color(0xff013088),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42,
                                      ),
                                    )
                                        .animate()
                                        .slideY(delay: 1500.ms)
                                        .fade(duration: 1500.ms),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      desc ?? 'Deskripsi yow',
                                      maxLines: 10,
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    )
                                        .animate()
                                        .slideY(delay: 1500.ms)
                                        .fade(duration: 1500.ms),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        HoverWidget(
                          hoverChild: Container(
                            height: 500,
                            color: Colors.white.withOpacity(0.20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      buttonCarouselController.previousPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.linear),
                                  icon: const Icon(
                                    Icons.arrow_back_rounded,
                                    size: 30,
                                  ),
                                )
                                    .animate()
                                    .slideX(delay: 100.ms)
                                    .fade(duration: 300.ms),
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      buttonCarouselController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.linear),
                                  icon: const Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 30,
                                  ),
                                )
                                    .animate()
                                    .slideX(delay: 100.ms)
                                    .fade(duration: 300.ms),
                              ],
                            ),
                          ),
                          onHover: (e) {},
                          child: Container(
                            height: 500,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    height: 500,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: true,
                  ),
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
      tablet: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 558,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider.builder(
                  carouselController: buttonCarouselController,
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String docId = snapshot.data!.docs[index].id;
                    String judul = homeInfo['judul'];
                    String desc = homeInfo['deskripsi'];

                    String imageUrl = homeInfo['imageUrl'];

                    return Stack(
                      children: [
                        AnimatedContainer(
                          height: 500,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 500),
                          transform: Matrix4.translationValues(0, 1, 0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(imageUrl),
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.85),
                                              BlendMode.dstATop),
                                          fit: BoxFit.contain),
                                    ),
                                  )
                                      .animate()
                                      .slideX(delay: 1000.ms)
                                      .fade(duration: 1000.ms),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 500,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      judul,
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        color: Color(0xff013088),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42,
                                      ),
                                    )
                                        .animate()
                                        .slideY(delay: 1500.ms)
                                        .fade(duration: 1500.ms),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      desc,
                                      maxLines: 10,
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    )
                                        .animate()
                                        .slideY(delay: 1500.ms)
                                        .fade(duration: 1500.ms),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        HoverWidget(
                          hoverChild: Container(
                            height: 500,
                            color: Colors.white.withOpacity(0.20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      buttonCarouselController.previousPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.linear),
                                  icon: const Icon(
                                    Icons.arrow_back_rounded,
                                    size: 30,
                                  ),
                                )
                                    .animate()
                                    .slideX(delay: 100.ms)
                                    .fade(duration: 300.ms),
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      buttonCarouselController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.linear),
                                  icon: const Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 30,
                                  ),
                                )
                                    .animate()
                                    .slideX(delay: 100.ms)
                                    .fade(duration: 300.ms),
                              ],
                            ),
                          ),
                          onHover: (e) {},
                          child: Container(
                            height: 500,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    height: 500,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: true,
                  ),
                  itemCount: snapshot.data!.docs.length,
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
      mobile: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider.builder(
                  carouselController: buttonCarouselController,
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String docId = snapshot.data!.docs[index].id;
                    String judul = homeInfo['judul'];
                    String desc = homeInfo['deskripsi'];

                    String imageUrl = homeInfo['imageUrl'];

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          judul,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                            color: Color(0xff013088),
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        )
                            .animate()
                            .slideY(delay: 1500.ms)
                            .fade(duration: 1500.ms),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imageUrl),
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.85),
                                    BlendMode.dstATop),
                                fit: BoxFit.cover),
                          ),
                        )
                            .animate()
                            .slideX(delay: 1000.ms)
                            .fade(duration: 1000.ms),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          desc,
                          maxLines: 10,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        )
                            .animate()
                            .slideY(delay: 1500.ms)
                            .fade(duration: 1500.ms),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    height: 600,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: true,
                  ),
                  itemCount: snapshot.data!.docs.length,
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
