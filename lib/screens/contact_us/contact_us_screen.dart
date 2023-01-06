import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
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
  String dropdownvalue = 'Where do you her about us?';
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
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/image_1.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.center,
                        colors: [
                          Color(0x00000000),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                    ),
                  ),
                  // FORM
                  Padding(
                    padding: const EdgeInsets.only(left: 130.0, top: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          """
For further 
information
please contact us""",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff013088),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 20.0),
                          width: 400,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          width: 400,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'E-mail',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          width: 400,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Company',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          width: 400,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Phone',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          width: 400,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            dropdownColor: Colors.white,
                            value: dropdownvalue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                            items: <String>[
                              'Where do you her about us?',
                              'Google',
                              'Online News',
                              'Connections',
                              'Newspaper / Magazine',
                              'Brochure / Pamphlet',
                              'Others'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          width: 400,
                          child: TextFormField(
                            maxLines: 4,
                            decoration: InputDecoration(
                              hintText: 'Message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[0] = true
                                  : _isHovering[0] = false;
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.center,
                                colors: _isHovering[0]
                                    ? [
                                        const Color(0xff019CDE),
                                        const Color(0xff013088)
                                            .withOpacity(0.8),
                                      ]
                                    : [
                                        const Color(0xff013088),
                                        const Color(0xff013088),
                                      ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Column(
                  children: [
                    Container(
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
                  ],
                ),
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
              const SizedBox(
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
