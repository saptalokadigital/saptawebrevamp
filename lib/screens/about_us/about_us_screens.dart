import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/our_team.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/story_saptaloka.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/visi_misi.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/weare_wedo.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class AboutUsScreens extends StatefulWidget {
  static const routeName = '/AboutUs';
  const AboutUsScreens({super.key});

  @override
  State<AboutUsScreens> createState() => _AboutUsScreensState();
}

class _AboutUsScreensState extends State<AboutUsScreens> {
  late ScrollController _scrollController;
  double pixels = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: HeaderWidget(),
      ),
      body: WebSmoothScroll(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
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
              SizedBox(
                height: 50,
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
