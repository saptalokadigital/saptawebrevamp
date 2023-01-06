import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlIG = Uri.parse('https://www.instagram.com/saptaloka.digital/');
final Uri _urlWA1 = Uri.parse(
    'https://wa.me/6281999737800?text=Halo Admin Saptaloka Digital, mau tanya-tanya dong!');

final Uri _urlWA2 = Uri.parse(
    'https://wa.me/6281911034318?text=Halo Admin Saptaloka Digital, mau tanya-tanya dong!');

class MaintenanceScreen extends StatefulWidget {
  const MaintenanceScreen({super.key});

  @override
  State<MaintenanceScreen> createState() => _MaintenanceScreenState();
}

void _launchIG() async {
  if (!await launchUrl(_urlIG)) throw 'Could not launch $_urlIG';
}

void _launchWA1() async {
  if (!await launchUrl(_urlWA1)) throw 'Could not launch $_urlWA1';
}

void _launchWA2() async {
  if (!await launchUrl(_urlWA2)) throw 'Could not launch $_urlWA2';
}

class _MaintenanceScreenState extends State<MaintenanceScreen> {
  double screenWidth = 0.0;
  double screenHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    final _key = GlobalKey<ExpandableFabState>();
    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        child: const Icon(Icons.phone),
        backgroundColor: Color(0xff013088),
        key: _key,
        children: [
          FloatingActionButton.small(
            backgroundColor: Color(0xff25d366),
            child: const Icon(Icons.whatsapp),
            onPressed: () => setState(() {
              _launchWA1();
            }),
          ),
          FloatingActionButton.small(
            backgroundColor: Color(0xff25d366),
            child: const Icon(Icons.whatsapp),
            onPressed: () => setState(() {
              _launchWA2();
            }),
          ),
          FloatingActionButton.small(
            backgroundColor: Colors.pinkAccent,
            child: const Icon(FontAwesomeIcons.instagram),
            onPressed: () => setState(() {
              _launchIG();
            }),
          ),
        ],
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: screenWidth / 2,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo_sedang.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                width: screenWidth,
                height: 7,
                color: Color(0XFF019CDE),
                margin: EdgeInsets.only(top: 10, bottom: 10),
              ),
              Responsive(
                large: Container(
                  width: screenWidth,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Marquee(
                    text:
                        '*  OUR WEBSITE IS CURRENTLY UNDER MAINTENANCE. PLEASE BE PATIENCE.',
                    style: GoogleFonts.inter(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff013088),
                      letterSpacing: 2,
                    ),
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                desktop: Container(
                  width: screenWidth,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Marquee(
                    text:
                        '*  OUR WEBSITE IS CURRENTLY UNDER MAINTENANCE. PLEASE BE PATIENCE.',
                    style: GoogleFonts.inter(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff013088),
                      letterSpacing: 2,
                    ),
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                tablet: Container(
                  width: screenWidth,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Marquee(
                    text:
                        '*  OUR WEBSITE IS CURRENTLY UNDER MAINTENANCE. PLEASE BE PATIENCE.',
                    style: GoogleFonts.inter(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff013088),
                      letterSpacing: 2,
                    ),
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                mobile: Container(
                  width: screenWidth,
                  height: 25,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Marquee(
                    text:
                        '*  OUR WEBSITE IS CURRENTLY UNDER MAINTENANCE. PLEASE BE PATIENCE.',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff013088),
                      letterSpacing: 2,
                    ),
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),
              Container(
                width: screenWidth,
                height: 7,
                color: Color(0XFF019CDE),
                margin: EdgeInsets.only(top: 10, bottom: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
