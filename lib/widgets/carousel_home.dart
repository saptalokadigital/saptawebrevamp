import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

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
    'assets/images/logo_gede.png',
    'assets/images/logo_gede.png',
    'assets/images/logo_gede.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 558,
        child: CarouselSlider.builder(
          carouselController: buttonCarouselController,
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                AnimatedContainer(
                  curve: Curves.easeInOut,
                  duration: const Duration(milliseconds: 500),
                  transform: Matrix4.translationValues(0, 1, 0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 500,
                        height: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${title[index]}',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.inter(
                                color: Color(0xff013088),
                                fontWeight: FontWeight.bold,
                                fontSize: 42,
                              ),
                            )
                                .animate()
                                .slideY(delay: 1000.ms)
                                .fade(duration: 1000.ms),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              '${text[index]}',
                              maxLines: 10,
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            )
                                .animate()
                                .slideY(delay: 1000.ms)
                                .fade(duration: 1000.ms),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Container(
                        width: 500,
                        height: 400,
                        child: Image.asset('${image[index]}'),
                      )
                          .animate()
                          .slideX(delay: 1500.ms)
                          .fade(duration: 1500.ms),
                    ],
                  ),
                ),
                HoverWidget(
                  hoverChild: Container(
                    height: 500,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () =>
                              buttonCarouselController.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear),
                          child: const Text(
                            '<',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                            .animate()
                            .slideX(delay: 100.ms)
                            .fade(duration: 300.ms),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () => buttonCarouselController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear),
                          child: const Text(
                            '>',
                            style: TextStyle(color: Colors.black),
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
                    decoration: const BoxDecoration(color: Colors.transparent),
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
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(seconds: 2),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            viewportFraction: 1,
            aspectRatio: 2.0,
            scrollDirection: Axis.horizontal,
            enlargeCenterPage: true,
          ),
          itemCount: text.length,
        ),
      ),
    );
  }
}
