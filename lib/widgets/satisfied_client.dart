import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

class SatisfiedClient extends StatefulWidget {
  const SatisfiedClient({super.key});

  @override
  State<SatisfiedClient> createState() => _SatisfiedClientState();
}

class _SatisfiedClientState extends State<SatisfiedClient> {
  List<Widget> itemCarousel = [
    Container(
      height: 30,
      width: 100,
      child: Image.asset(
        "assets/images/logo_banner.png",
        fit: BoxFit.cover,
      ),
    ),
    Container(
      height: 30,
      width: 100,
      child: Image.asset(
        "assets/images/logo_banner.png",
        fit: BoxFit.cover,
      ),
    ),
    Container(
      height: 30,
      width: 100,
      child: Image.asset(
        "assets/images/logo_banner.png",
        fit: BoxFit.cover,
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: CarouselSlider(
            items: itemCarousel,
            options: CarouselOptions(
              height: 200,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(milliseconds: 800),
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 0.1,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
      desktop: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: CarouselSlider(
            items: itemCarousel,
            options: CarouselOptions(
              height: 200,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(milliseconds: 800),
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 0.1,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
      tablet: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: CarouselSlider(
            items: itemCarousel,
            options: CarouselOptions(
              height: 200,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(milliseconds: 800),
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 0.2,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
      mobile: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: CarouselSlider(
            items: itemCarousel,
            options: CarouselOptions(
              height: 200,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(milliseconds: 800),
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 0.35,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
