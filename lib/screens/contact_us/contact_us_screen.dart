// ignore_for_file: sized_box_for_whitespace

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/widgets/form_contact_us.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/widgets/maps_widget.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class ContactUsScreen extends StatefulWidget {
  static const routeName = '/ContactUs';
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  // Controllers
  late ScrollController _scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: const HeaderWidget(),
      ),
      body: WebSmoothScroll(
        controller: _scrollController,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FormContactUs(),
              SizedBox(
                height: 50.0,
              ),
              MapsWidget(),
              SizedBox(
                height: 70.0,
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
