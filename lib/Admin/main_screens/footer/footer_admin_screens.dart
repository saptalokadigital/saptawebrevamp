import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/footer/edit_footer.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

class FooterAdminScreens extends StatefulWidget {
  static const String id = "footer-admin";
  const FooterAdminScreens({super.key});

  @override
  State<FooterAdminScreens> createState() => _FooterAdminScreensState();
}

class _FooterAdminScreensState extends State<FooterAdminScreens> {
  String alamat = "";
  String email = "";
  String fb = "";
  String ig = "";
  String linked = "";
  String yt = "";
  String phone = "";
  String id = "";
  @override
  void initState() {
    getFooterData();
    super.initState();
  }

  Future<void> getFooterData() async {
    try {
      final DocumentSnapshot FooterSapta = await FirebaseFirestore.instance
          .collection('Footer')
          .doc('satu')
          .get();
      if (FooterSapta == null) {
        return;
      } else {
        setState(() {
          id = FooterSapta.get('id');
          alamat = FooterSapta.get('alamat');
          email = FooterSapta.get('email');
          phone = FooterSapta.get('phone');
          fb = FooterSapta.get('fb');
          ig = FooterSapta.get('ig');
          yt = FooterSapta.get('yt');
          linked = FooterSapta.get('linked');
        });
      }
    } catch (error) {
      GlobalMethods.errorDialog(subtitle: '$error', context: context);
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    var screensSize = MediaQuery.of(context).size;
    bool _isHover = false;
    return Container(
        width: screensSize.width,
        child: Column(
          children: [
            Container(
              width: screensSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 50),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FooterEdit(
                                    id: id,
                                    alamat: alamat,
                                    phone: phone,
                                    email: email,
                                    igLink: ig,
                                    fbLink: fb,
                                    linkedLink: linked,
                                    ytLink: yt)));
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Responsive(
              mobile: Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff019CDE),
                        Color(0xff013088),
                      ]),
                ),
                child: DefaultTextStyle(
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 50),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "About Us",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text('Stories'),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text('Press Release'),
                                            Text('Media Coverage'),
                                            Text('life at SISI'),
                                            Text('Insight')
                                          ]),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Solutions",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text('Shared Services'),
                                            Text('Digital Solution'),
                                            Text('System Integrator'),
                                          ]),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Legal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('FORCA ERP Terms & Conditions'),
                                        Text('FORCA ERP Privacy'),
                                        Text('Policy'),
                                        Text('Kebijakan'),
                                        Text('Perusahaan'),
                                        Text('Whistle Blowing'),
                                        Text('System (WBS)'),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "PT SINERGI INFORMATIKA SEMEN INDONESIA",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(child: Text(alamat)),
                                Text('P: $phone'),
                                Text('E. $email'),
                                Text(
                                    'E. pr.sisi@sisi.sig.id (Media & External Invitation'),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  onHover: (isHovering) {
                                    setState(() {
                                      _isHover = isHovering;
                                    });
                                  },
                                  child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 1000),
                                    child: _isHover
                                        ? OutlinedButton(
                                            onPressed: (() {}),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'CONTACT US',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.arrow_right_outlined,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 58, 127, 255)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          )
                                        : OutlinedButton(
                                            onPressed: (() {}),
                                            child: Text(
                                              'CONTACT US',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: ButtonStyle(
                                              side: MaterialStateProperty.all(
                                                  BorderSide(
                                                      color: Colors.white)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.facebookF,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.instagram,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.linkedinIn,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.youtube,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              tablet: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff019CDE),
                      Color(0xff013088),
                    ])),
                child: DefaultTextStyle(
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 50),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Us",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Stories'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Press Release'),
                                        Text('Media Coverage'),
                                        Text('life at SISI'),
                                        Text('Insight')
                                      ]),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Solutions",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Shared Services'),
                                        Text('Digital Solution'),
                                        Text('System Integrator'),
                                      ]),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Legal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('FORCA ERP Terms & Conditions'),
                                        Text('FORCA ERP Privacy'),
                                        Text('Policy'),
                                        Text('Kebijakan'),
                                        Text('Perusahaan'),
                                        Text('Whistle Blowing'),
                                        Text('System (WBS)'),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "PT SINERGI INFORMATIKA SEMEN INDONESIA",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(child: Text(alamat)),
                                Text('P: $phone'),
                                Text('E. $email'),
                                Text(
                                    'E. pr.sisi@sisi.sig.id (Media & External Invitation'),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  onHover: (isHovering) {
                                    setState(() {
                                      _isHover = isHovering;
                                    });
                                  },
                                  child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 1000),
                                    child: _isHover
                                        ? OutlinedButton(
                                            onPressed: (() {}),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'CONTACT US',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.arrow_right_outlined,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 58, 127, 255)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          )
                                        : OutlinedButton(
                                            onPressed: (() {}),
                                            child: Text(
                                              'CONTACT US',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: ButtonStyle(
                                              side: MaterialStateProperty.all(
                                                  BorderSide(
                                                      color: Colors.white)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.facebookF,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.instagram,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.linkedinIn,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.youtube,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 70),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              desktop: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff019CDE),
                      Color(0xff013088),
                    ])),
                child: DefaultTextStyle(
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 50),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Us",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Stories'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Press Release'),
                                        Text('Media Coverage'),
                                        Text('life at SISI'),
                                        Text('Insight')
                                      ]),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Solutions",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Shared Services'),
                                        Text('Digital Solution'),
                                        Text('System Integrator'),
                                      ]),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Legal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('FORCA ERP Terms & Conditions'),
                                        Text('FORCA ERP Privacy'),
                                        Text('Policy'),
                                        Text('Kebijakan'),
                                        Text('Perusahaan'),
                                        Text('Whistle Blowing'),
                                        Text('System (WBS)'),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "PT SINERGI INFORMATIKA SEMEN INDONESIA",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(child: Text(alamat)),
                                Text('P: $phone'),
                                Text('E. $email'),
                                Text(
                                    'E. pr.sisi@sisi.sig.id (Media & External Invitation'),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  onHover: (isHovering) {
                                    setState(() {
                                      _isHover = isHovering;
                                    });
                                  },
                                  child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 1000),
                                    child: _isHover
                                        ? OutlinedButton(
                                            onPressed: (() {}),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'CONTACT US',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.arrow_right_outlined,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 58, 127, 255)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          )
                                        : OutlinedButton(
                                            onPressed: (() {}),
                                            child: Text(
                                              'CONTACT US',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: ButtonStyle(
                                              side: MaterialStateProperty.all(
                                                  BorderSide(
                                                      color: Colors.white)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.facebookF,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.instagram,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.linkedinIn,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.youtube,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 70),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              large: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff019CDE),
                      Color(0xff013088),
                    ])),
                child: DefaultTextStyle(
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 50),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Us",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Stories'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Press Release'),
                                        Text('Media Coverage'),
                                        Text('life at SISI'),
                                        Text('Insight')
                                      ]),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Solutions",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Shared Services'),
                                        Text('Digital Solution'),
                                        Text('System Integrator'),
                                      ]),
                                ),
                                SizedBox(
                                  width: 95,
                                ),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Legal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('FORCA ERP Terms & Conditions'),
                                        Text('FORCA ERP Privacy'),
                                        Text('Policy'),
                                        Text('Kebijakan'),
                                        Text('Perusahaan'),
                                        Text('Whistle Blowing'),
                                        Text('System (WBS)'),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "PT SINERGI INFORMATIKA SEMEN INDONESIA",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(child: Text(alamat)),
                                Text('P: $phone'),
                                Text('E. $email'),
                                Text(
                                    'E. pr.sisi@sisi.sig.id (Media & External Invitation'),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  onHover: (isHovering) {
                                    setState(() {
                                      _isHover = isHovering;
                                    });
                                  },
                                  child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 1000),
                                    child: _isHover
                                        ? OutlinedButton(
                                            onPressed: (() {}),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'CONTACT US',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.arrow_right_outlined,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 58, 127, 255)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          )
                                        : OutlinedButton(
                                            onPressed: (() {}),
                                            child: Text(
                                              'CONTACT US',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: ButtonStyle(
                                              side: MaterialStateProperty.all(
                                                  BorderSide(
                                                      color: Colors.white)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                          color: Colors.white)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                          ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.facebookF,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.instagram,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.linkedinIn,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        FontAwesomeIcons.youtube,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.white)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 70),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
