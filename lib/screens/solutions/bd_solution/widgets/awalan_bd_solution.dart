import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../responsive.dart';

class AwalanBDSolution extends StatelessWidget {
  const AwalanBDSolution({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 505,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              padding: EdgeInsets.only(top: 75, left: 100),
              width: MediaQuery.of(context).size.width / 2,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Digital Solution',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Color(0xff013088),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Development of ERP (Enterprises Resource Planning) and MES (Manufacturing Execution System)',
                    style: GoogleFonts.inter(
                      fontSize: 25,
                      color: Color.fromARGB(255, 58, 60, 63),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      desktop: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 505,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              padding: EdgeInsets.only(top: 75, left: 100),
              width: MediaQuery.of(context).size.width / 2,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Digital Solution',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Color(0xff013088),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Development of ERP (Enterprises Resource Planning) and MES (Manufacturing Execution System)',
                    style: GoogleFonts.inter(
                      fontSize: 25,
                      color: Color.fromARGB(255, 58, 60, 63),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 505,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              padding: EdgeInsets.only(top: 75, left: 100),
              width: MediaQuery.of(context).size.width / 2,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Digital Solution',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Color(0xff013088),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Development of ERP (Enterprises Resource Planning) and MES (Manufacturing Execution System)',
                    style: GoogleFonts.inter(
                      fontSize: 25,
                      color: Color.fromARGB(255, 58, 60, 63),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        width: MediaQuery.of(context).size.width,
        height: 600,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/industrial-health-measures-during-corona-virus-pandemic.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50, left: 10),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Digital Solution',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xff013088),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Development of ERP (Enterprises Resource Planning) and MES (Manufacturing Execution System)',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Color.fromARGB(255, 58, 60, 63),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
