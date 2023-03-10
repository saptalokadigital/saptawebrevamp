import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/router_const.dart';
import 'package:go_router/go_router.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo_header.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 60,
            ),
            Flexible(
              child: TextButton(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onPressed: () {
                  context.go(aboutUsRoute);
                },
                child: Text(
                  'About Us',
                  style: GoogleFonts.inter(
                    color: _isHovering[0]
                        ? const Color(0xff013088)
                        : const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Flexible(
              child: Container(
                width: 100,
                child: TextButton(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onPressed: () {
                    context.go(solutionsRoute);
                  },
                  child: Row(
                    children: [
                      Text(
                        'Solutions',
                        style: GoogleFonts.inter(
                          color: _isHovering[1]
                              ? const Color(0xff013088)
                              : const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: _isHovering[1]
                            ? const Color(0xff013088)
                            : const Color.fromARGB(255, 0, 0, 0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Flexible(
              child: TextButton(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onPressed: () {
                  context.go(contactUsRoute);
                },
                child: Text(
                  'Contact Us',
                  style: GoogleFonts.inter(
                    color: _isHovering[2]
                        ? const Color(0xff013088)
                        : const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
