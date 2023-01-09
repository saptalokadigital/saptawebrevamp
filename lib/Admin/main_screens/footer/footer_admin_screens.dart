import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterAdminScreens extends StatefulWidget {
  static const String id = "footer-admin";
  const FooterAdminScreens({super.key});

  @override
  State<FooterAdminScreens> createState() => _FooterAdminScreensState();
}

class _FooterAdminScreensState extends State<FooterAdminScreens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Footer",
        style: GoogleFonts.inter(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
