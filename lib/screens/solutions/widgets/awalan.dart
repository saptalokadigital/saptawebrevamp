import 'package:auto_animated/auto_animated.dart';
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
        height: 550,
        child: Column(
          children: [
            AnimateIfVisible(
              key: const Key('item.1'),
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
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/satisfaction-happy-service-client-customer-user-concept.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                );
              },
            ),
            Container(
              padding: EdgeInsets.only(top: 25, left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimateIfVisible(
                    key: const Key('item.2'),
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
                          child: Text(
                            'Your Satisfaction is Our Top Priority',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Color(0xff013088),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AnimateIfVisible(
                    key: const Key('item.3'),
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
                          child: Text(
                            'Untuk mendukung pertumbuhan perusahaan dari berbagai industri, kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki.',
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Color.fromARGB(255, 58, 60, 63),
                            ),
                          ),
                        ),
                      );
                    },
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
            AnimateIfVisible(
              key: const Key('item.1'),
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
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/satisfaction-happy-service-client-customer-user-concept.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                );
              },
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
                  AnimateIfVisible(
                    key: const Key('item.2'),
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
                          child: Text(
                            'Your Satisfaction is Our Top Priority',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              color: Color(0xff013088),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AnimateIfVisible(
                    key: const Key('item.3'),
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
                          child: Text(
                            'Untuk mendukung pertumbuhan perusahaan dari berbagai industri, kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki.',
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Color.fromARGB(255, 58, 60, 63),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      desktop: Container(
        width: MediaQuery.of(context).size.width,
        height: 500,
        child: Stack(
          children: [
            AnimateIfVisible(
              key: const Key('item.1'),
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
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/satisfaction-happy-service-client-customer-user-concept.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                );
              },
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
                children: [
                  AnimateIfVisible(
                    key: const Key('item.2'),
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
                          child: Text(
                            'Client Trust and Satisfaction is Our Top Priority',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Color(0xff013088),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AnimateIfVisible(
                    key: const Key('item.3'),
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
                          child: Text(
                            'Kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki untuk mendukung pertumbuhan bisnis Anda.',
                            style: GoogleFonts.inter(
                              fontSize: 25,
                              color: Color.fromARGB(255, 58, 60, 63),
                            ),
                          ),
                        ),
                      );
                    },
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
            AnimateIfVisible(
              key: const Key('item.1'),
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
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/satisfaction-happy-service-client-customer-user-concept.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                );
              },
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
                  AnimateIfVisible(
                    key: const Key('item.2'),
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
                          child: Text(
                            'Your Satisfaction is Our Top Priority',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              color: Color(0xff013088),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AnimateIfVisible(
                    key: const Key('item.2'),
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
                          child: Text(
                            'Untuk mendukung pertumbuhan perusahaan dari berbagai industri, kami terus bekerja secara maksimal melalui produk dan layanan yang kami miliki.',
                            style: GoogleFonts.inter(
                              fontSize: 25,
                              color: Color.fromARGB(255, 58, 60, 63),
                            ),
                          ),
                        ),
                      );
                    },
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
