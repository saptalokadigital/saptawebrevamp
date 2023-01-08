import 'package:flutter/material.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/awalan.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/our_solutions.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/our_solutions_coba.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'package:google_fonts/google_fonts.dart';

class SolutionsScreen extends StatefulWidget {
  static const routeName = '/Solutions';
  const SolutionsScreen({Key? key}) : super(key: key);

  @override
  _SolutionsScreenState createState() => _SolutionsScreenState();
}

class _SolutionsScreenState extends State<SolutionsScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: HeaderWidget(),
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: WebSmoothScroll(
          controller: _scrollController,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _scrollController,
            child: Column(children: [
              Awalan(),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(
                    "Our Solutions",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  OurSolutionsCoba(),
                  const SizedBox(
                    height: 50,
                  ),
                  Footer()
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
