import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

class Awalan extends StatelessWidget {
  const Awalan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 155,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              padding: EdgeInsets.only(top: 75, left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Column(
                children: [
                  Text(
                    'Your Satisfaction is Our Top Priority',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff013088),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Untuk mendukung pertumbuhan perusahaan dari berbagai industri, kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki.',
                    style: GoogleFonts.inter(
                      fontSize: 15,
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
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 305,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              padding: EdgeInsets.only(top: 75, left: 100),
              width: MediaQuery.of(context).size.width * 0.75,
              height: 400,
              child: Column(
                children: [
                  Text(
                    'Your Satisfaction is Our Top Priority',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Color(0xff013088),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Untuk mendukung pertumbuhan perusahaan dari berbagai industri, kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki.',
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
      desktop: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 405,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              padding: EdgeInsets.only(top: 75, left: 100),
              width: MediaQuery.of(context).size.width / 2,
              height: 400,
              child: Column(
                children: [
                  Text(
                    'Your Satisfaction is Our Top Priority',
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
                    'Untuk mendukung pertumbuhan perusahaan dari berbagai industri, kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki.',
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
      large: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 405,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              padding: EdgeInsets.only(top: 75, left: 100),
              width: MediaQuery.of(context).size.width / 2,
              height: 400,
              child: Column(
                children: [
                  Text(
                    'Your Satisfaction is Our Top Priority',
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
                    'Untuk mendukung pertumbuhan perusahaan dari berbagai industri, kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki.',
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
    );
  }
}
