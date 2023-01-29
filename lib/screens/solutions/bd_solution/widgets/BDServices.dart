import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../responsive.dart';
import '../../it_solution/widgets/card_solution.dart';

class BDServices extends StatelessWidget {
  const BDServices({super.key});

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
                  imageBack:
                      'assets/images/businesspeople-working-finance-accounting-analyze-financi.jpg',
                  image: 'assets/images/SAPTALOKA ERP.png',
                  title: 'ENTERPRISES RESOURCE PLANNING',
                  desc:
                      'Layanan jasa pembuatan aplikasi ERP (Enterprises Resource Planning).',
                ),
                CardSolutionLong(
                  imageBack: 'assets/images/engineer-staff-male-background.jpg',
                  image: 'assets/images/SAPTALOKA MES.png',
                  title: 'MANUFACTURING EXECUTION SYSTEM',
                  desc:
                      'Layanan jasa pembuatan aplikasi MES (Manufacturing Execution System).',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/confectionary-shop-owner.jpg',
              image: 'assets/images/SAPTALOKA POS.png',
              title: 'POINT OF SALES',
              desc: 'Layanan jasa pembuatan Aplikasi POS (Point Of Sales).',
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
                  imageBack:
                      'assets/images/businesspeople-working-finance-accounting-analyze-financi.jpg',
                  image: 'assets/images/SAPTALOKA ERP.png',
                  title: 'ENTERPRISES RESOURCE PLANNING',
                  desc:
                      'Layanan jasa pembuatan aplikasi ERP (Enterprises Resource Planning).',
                ),
                CardSolutionLong(
                  imageBack: 'assets/images/engineer-staff-male-background.jpg',
                  image: 'assets/images/SAPTALOKA MES.png',
                  title: 'MANUFACTURING EXECUTION SYSTEM',
                  desc:
                      'Layanan jasa pembuatan aplikasi MES (Manufacturing Execution System).',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/confectionary-shop-owner.jpg',
              image: 'assets/images/SAPTALOKA POS.png',
              title: 'POINT OF SALES',
              desc: 'Layanan jasa pembuatan Aplikasi POS (Point Of Sales).',
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
                  imageBack:
                      'assets/images/businesspeople-working-finance-accounting-analyze-financi.jpg',
                  image: 'assets/images/SAPTALOKA ERP.png',
                  title: 'ENTERPRISES RESOURCE PLANNING',
                  desc:
                      'Layanan jasa pembuatan aplikasi ERP (Enterprises Resource Planning).',
                ),
                CardSolutionLong(
                  imageBack: 'assets/images/engineer-staff-male-background.jpg',
                  image: 'assets/images/SAPTALOKA MES.png',
                  title: 'MANUFACTURING EXECUTION SYSTEM',
                  desc:
                      'Layanan jasa pembuatan aplikasi MES (Manufacturing Execution System).',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/confectionary-shop-owner.jpg',
              image: 'assets/images/SAPTALOKA POS.png',
              title: 'POINT OF SALES',
              desc: 'Layanan jasa pembuatan Aplikasi POS (Point Of Sales).',
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
              imageBack:
                  'assets/images/businesspeople-working-finance-accounting-analyze-financi.jpg',
              image: 'assets/images/SAPTALOKA ERP.png',
              title: 'ENTERPRISES RESOURCE PLANNING',
              desc:
                  'Layanan jasa pembuatan aplikasi ERP (Enterprises Resource Planning).',
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/engineer-staff-male-background.jpg',
              image: 'assets/images/SAPTALOKA MES.png',
              title: 'MANUFACTURING EXECUTION SYSTEM',
              desc:
                  'Layanan jasa pembuatan aplikasi MES (Manufacturing Execution System).',
            ),
            SizedBox(
              height: 50,
            ),
            CardSolutionLong(
              imageBack: 'assets/images/confectionary-shop-owner.jpg',
              image: 'assets/images/SAPTALOKA POS.png',
              title: 'POINT OF SALES',
              desc: 'Layanan jasa pembuatan Aplikasi POS (Point Of Sales).',
            ),
          ],
        ),
      ),
    );
  }
}
