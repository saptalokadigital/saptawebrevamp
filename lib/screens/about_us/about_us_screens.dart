import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/our_team.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/story_saptaloka.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/visi_misi.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/weare_wedo.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';

class AboutUsScreens extends StatefulWidget {
  static const routeName = '/AboutUs';
  const AboutUsScreens({super.key});

  @override
  State<AboutUsScreens> createState() => _AboutUsScreensState();
}

class _AboutUsScreensState extends State<AboutUsScreens> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: HeaderWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            StorySaptaloka(),
            SizedBox(
              height: 50,
            ),
            WeAreWedo(),
            SizedBox(
              height: 50,
            ),
            VisiMisi(),
            SizedBox(
              height: 50,
            ),
            OurTeam()
          ],
        ),
      ),
    );
  }
}
