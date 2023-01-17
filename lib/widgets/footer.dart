import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/router_const.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:go_router/go_router.dart';
import '../global_methods.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Responsive(
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
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "About Us",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Stories',
                                            style: TextStyle(
                                                color: Colors.white))),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Press Release',
                                            style: TextStyle(
                                                color: Colors.white))),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Media Coverage',
                                            style: TextStyle(
                                                color: Colors.white))),
                                  ]),
                            ),
                            Spacer(),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Solutions",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('IT Solution',
                                            style: TextStyle(
                                                color: Colors.white))),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Business Digital Solution',
                                            style: TextStyle(
                                                color: Colors.white))),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Digital Marketing',
                                            style: TextStyle(
                                                color: Colors.white))),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  StreamBuilder<DocumentSnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('Footer')
                          .doc('satu')
                          .snapshots(),
                      builder: (context, snapshot) {
                        void _launchIG() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['ig'])))
                            throw 'Could not launch ${snapshot.data!['ig']}';
                        }

                        void _launchFB() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['fb'])))
                            throw 'Could not launch ${snapshot.data!['fb']}';
                        }

                        void _launchYT() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['yt'])))
                            throw 'Could not launch ${snapshot.data!['yt']}';
                        }

                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SAPTALOKA DIGITAL",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(snapshot.data!['alamat']),
                              Text(snapshot.data!['alamat2']),
                              Text('Indonesia'),
                              Text('P: ${snapshot.data!['phone']}'),
                              Text('E. ${snapshot.data!['email']}'),
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
                                  duration: Duration(milliseconds: 300),
                                  child: _isHover
                                      ? Container(
                                          width: 145,
                                          key: ValueKey<int>(0),
                                          child: OutlinedButton(
                                            onPressed: (() {
                                              context.go(contactUsRoute);
                                            }),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
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
                                          ),
                                        )
                                      : Container(
                                          width: 145,
                                          key: ValueKey<int>(1),
                                          child: OutlinedButton(
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
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchFB();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchIG();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Container(
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
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
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
            padding: const EdgeInsets.only(left: 75, top: 5),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "About Us",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Stories',
                                        style: TextStyle(color: Colors.white))),
                                SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Press Release',
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Media Coverage',
                                        style: TextStyle(color: Colors.white))),
                              ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 75, top: 70),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Solutions",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('IT Solution',
                                      style: TextStyle(color: Colors.white))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Business Digital Solution',
                                      style: TextStyle(color: Colors.white))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Digital Marketing',
                                      style: TextStyle(color: Colors.white))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  StreamBuilder<DocumentSnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('Footer')
                          .doc('satu')
                          .snapshots(),
                      builder: (context, snapshot) {
                        void _launchIG() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['ig'])))
                            throw 'Could not launch ${snapshot.data!['ig']}';
                        }

                        void _launchFB() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['fb'])))
                            throw 'Could not launch ${snapshot.data!['fb']}';
                        }

                        void _launchYT() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['yt'])))
                            throw 'Could not launch ${snapshot.data!['yt']}';
                        }

                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SAPTALOKA DIGITAL",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(snapshot.data!['alamat']),
                              Text(snapshot.data!['alamat2']),
                              Text('Indonesia'),
                              Text('P: ${snapshot.data!['phone']}'),
                              Text('E. ${snapshot.data!['email']}'),
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
                                  duration: Duration(milliseconds: 300),
                                  child: _isHover
                                      ? Container(
                                          width: 145,
                                          key: ValueKey<int>(0),
                                          child: OutlinedButton(
                                            onPressed: (() {
                                              context.go(contactUsRoute);
                                            }),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
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
                                          ),
                                        )
                                      : Container(
                                          width: 145,
                                          key: ValueKey<int>(1),
                                          child: OutlinedButton(
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
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchFB();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchIG();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Container(
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
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
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
            padding: const EdgeInsets.only(left: 50.0, top: 50),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "About Us",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Stories',
                                        style: TextStyle(color: Colors.white))),
                                SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Press Release',
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Media Coverage',
                                        style: TextStyle(color: Colors.white))),
                              ]),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Solutions",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('IT Solution',
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Business Digital Solution',
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Digital Marketing',
                                        style: TextStyle(color: Colors.white))),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  StreamBuilder<DocumentSnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('Footer')
                          .doc('satu')
                          .snapshots(),
                      builder: (context, snapshot) {
                        void _launchIG() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['ig'])))
                            throw 'Could not launch ${snapshot.data!['ig']}';
                        }

                        void _launchFB() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['fb'])))
                            throw 'Could not launch ${snapshot.data!['fb']}';
                        }

                        void _launchYT() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['yt'])))
                            throw 'Could not launch ${snapshot.data!['yt']}';
                        }

                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SAPTALOKA DIGITAL",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(snapshot.data!['alamat']),
                              Text(snapshot.data!['alamat2']),
                              Text('Indonesia'),
                              Text('P: ${snapshot.data!['phone']}'),
                              Text('E. ${snapshot.data!['email']}'),
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
                                  duration: Duration(milliseconds: 300),
                                  child: _isHover
                                      ? Container(
                                          width: 155,
                                          key: ValueKey<int>(0),
                                          child: OutlinedButton(
                                            onPressed: (() {
                                              context.go(contactUsRoute);
                                            }),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
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
                                          ),
                                        )
                                      : Container(
                                          width: 155,
                                          key: ValueKey<int>(1),
                                          child: OutlinedButton(
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
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchFB();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchIG();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Container(
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
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
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
            padding:
                const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "About Us",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Stories',
                                        style: TextStyle(color: Colors.white))),
                                SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Press Release',
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Media Coverage',
                                        style: TextStyle(color: Colors.white))),
                              ]),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Solutions",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('IT Solution',
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Business Digital Solution',
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Digital Marketing',
                                        style: TextStyle(color: Colors.white))),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  StreamBuilder<DocumentSnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('Footer')
                          .doc('satu')
                          .snapshots(),
                      builder: (context, snapshot) {
                        void _launchIG() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['ig'])))
                            throw 'Could not launch ${snapshot.data!['ig']}';
                        }

                        void _launchFB() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['fb'])))
                            throw 'Could not launch ${snapshot.data!['fb']}';
                        }

                        void _launchYT() async {
                          if (!await launchUrl(Uri.parse(snapshot.data!['yt'])))
                            throw 'Could not launch ${snapshot.data!['yt']}';
                        }

                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SAPTALOKA DIGITAL",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(snapshot.data!['alamat']),
                              Text(snapshot.data!['alamat2']),
                              Text('Indonesia'),
                              Text('P: ${snapshot.data!['phone']}'),
                              Text('E. ${snapshot.data!['email']}'),
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
                                  duration: Duration(milliseconds: 300),
                                  child: _isHover
                                      ? Container(
                                          width: 145,
                                          key: ValueKey<int>(0),
                                          child: OutlinedButton(
                                            onPressed: (() {
                                              context.go(contactUsRoute);
                                            }),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
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
                                          ),
                                        )
                                      : Container(
                                          width: 145,
                                          key: ValueKey<int>(1),
                                          child: OutlinedButton(
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
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchFB();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchIG();
                                      });
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Container(
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
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                  SizedBox(width: 70),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
