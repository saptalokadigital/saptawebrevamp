// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

class MapsWidget extends StatelessWidget {
  const MapsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Responsive(
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 55),
            width: 301,
            child: Text(
              "We break barries & serve customer nationwide",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff013088),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: screenSize.width,
            height: 600,
            child: OpenStreetMapSearchAndPick(
              center: LatLong(-6.922298100023234, 107.55336012914735),
              onPicked: (o) {
                Navigator.pop(context);
              },
              buttonColor: Colors.black,
            ),
          ),
        ],
      ),
      desktop: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 130),
            width: 700,
            child: Text(
              "We break barries & serve customer nationwide",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff013088),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: screenSize.width,
            height: 600,
            child: OpenStreetMapSearchAndPick(
              center: LatLong(-6.922298100023234, 107.55336012914735),
              onPicked: (o) {
                Navigator.pop(context);
              },
              buttonColor: Colors.black,
            ),
          ),
        ],
      ),
      tablet: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 80),
            width: 700,
            child: Text(
              "We break barries & serve customer nationwide",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff013088),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: screenSize.width,
            height: 600,
            child: OpenStreetMapSearchAndPick(
              center: LatLong(-6.922298100023234, 107.55336012914735),
              onPicked: (o) {
                Navigator.pop(context);
              },
              buttonColor: Colors.black,
            ),
          ),
        ],
      ),
      large: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 150),
            width: 800,
            child: Text(
              "We break barries & serve customer nationwide",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff013088),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: screenSize.width,
            height: 600,
            child: OpenStreetMapSearchAndPick(
              center: LatLong(-6.922298100023234, 107.55336012914735),
              onPicked: (o) {
                Navigator.pop(context);
              },
              buttonColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
