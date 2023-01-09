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
    'assets/images/fotojaringan.png',
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
                            width: MediaQuery.of(context).size.width / 2,
                            height: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('${image[index]}'),
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
                                .slideY(delay: 1500.ms)
                                .fade(duration: 1500.ms),
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
                                .slideY(delay: 1500.ms)
                                .fade(duration: 1500.ms),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
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
                            backgroundColor: MaterialStatePropertyAll<Color>(
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
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () => buttonCarouselController.nextPage(
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
          itemCount: text.length,
        ),
      ),
    );
  }
}
