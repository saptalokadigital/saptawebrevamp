import 'package:flutter/material.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

import 'card_solution.dart';

class SoftwareServices extends StatelessWidget {
  const SoftwareServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        height: 1080,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardSolutionLong(
                  imageBack: 'assets/images/image_1.png',
                  image: 'assets/images/WEBSITES.png',
                  title: 'WEBSITE DEVELOPMENT',
                  desc:
                      'Layanan jasa pembuatan aplikasi multiplatform terintegrasi (custom).',
                ),
                CardSolutionLong(
                  imageBack: 'assets/images/image_1.png',
                  image: 'assets/images/SOFTWARE DEV..png',
                  title: 'MULTIPLATFORM APP DEVELOPMENT',
                  desc:
                      'Layanan jasa pembuatan website landing page, company profile, dll. (custom).',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/image_1.png',
              image: 'assets/images/GAMES.png',
              title: 'GAME DEVELOPMENT',
              desc: 'Layanan jasa pembuatan game untuk pembelajaran.',
            ),
          ],
        ),
      ),
      desktop: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        height: 1080,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardSolutionLong(
                  imageBack: 'assets/images/image_1.png',
                  image: 'assets/images/WEBSITES.png',
                  title: 'WEBSITE DEVELOPMENT',
                  desc:
                      'Layanan jasa pembuatan aplikasi multiplatform terintegrasi (custom).',
                ),
                CardSolutionLong(
                  imageBack: 'assets/images/image_1.png',
                  image: 'assets/images/SOFTWARE DEV..png',
                  title: 'MULTIPLATFORM APP DEVELOPMENT',
                  desc:
                      'Layanan jasa pembuatan website landing page, company profile, dll. (custom).',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/image_1.png',
              image: 'assets/images/GAMES.png',
              title: 'GAME DEVELOPMENT',
              desc: 'Layanan jasa pembuatan game untuk pembelajaran.',
            ),
          ],
        ),
      ),
      tablet: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        height: 1080,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardSolutionLong(
                  imageBack: 'assets/images/image_1.png',
                  image: 'assets/images/WEBSITES.png',
                  title: 'WEBSITE DEVELOPMENT',
                  desc:
                      'Layanan jasa pembuatan aplikasi multiplatform terintegrasi (custom).',
                ),
                CardSolutionLong(
                  imageBack: 'assets/images/image_1.png',
                  image: 'assets/images/SOFTWARE DEV..png',
                  title: 'MULTIPLATFORM APP DEVELOPMENT',
                  desc:
                      'Layanan jasa pembuatan website landing page, company profile, dll. (custom).',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/image_1.png',
              image: 'assets/images/GAMES.png',
              title: 'GAME DEVELOPMENT',
              desc: 'Layanan jasa pembuatan game untuk pembelajaran.',
            ),
          ],
        ),
      ),
      mobile: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        height: 1680,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CardSolutionLong(
              imageBack: 'assets/images/image_1.png',
              image: 'assets/images/SOFTWARE DEV..png',
              title: 'MULTIPLATFORM APP DEVELOPMENT',
              desc:
                  'Layanan jasa pembuatan aplikasi multiplatform terintegrasi (custom).',
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/image_1.png',
              image: 'assets/images/WEBSITES.png',
              title: 'WEBSITE DEVELOPMENT',
              desc:
                  'Layanan jasa pembuatan website landing page, company profile, dll. (custom).',
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/image_1.png',
              image: 'assets/images/GAMES.png',
              title: 'GAME DEVELOPMENT',
              desc: 'Layanan jasa pembuatan game untuk pembelajaran.',
            ),
          ],
        ),
      ),
    );
  }
}
