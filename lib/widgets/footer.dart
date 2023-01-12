import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';

import 'package:url_launcher/url_launcher.dart';

final Uri _urlIG = Uri.parse('https://www.instagram.com/saptaloka.digital/');
final Uri _urlFB = Uri.parse('https://www.facebook.com/bengkelcoding/');

final Uri _urlYT = Uri.parse(
    'https://wa.me/6283873296832?text=Halo Admin Saptaloka Digital, mau tanya-tanya dong!');

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  void _launchIG() async {
    if (!await launchUrl(_urlIG)) throw 'Could not launch $_urlIG';
  }

  void _launchFB() async {
    if (!await launchUrl(_urlFB)) throw 'Could not launch $_urlFB';
  }

  void _launchYT() async {
    if (!await launchUrl(_urlYT)) throw 'Could not launch $_urlYT';
  }

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
                                    Text('Stories'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Press Release'),
                                    Text('Media Coverage'),
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
                  Container(
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
                        Text('Jalan Melong Tengah No.138'),
                        Text('Melong, Cimahi Cimahi Selatan, Jawa Barat 40534'),
                        Text('Indonesia'),
                        Text('P: +62 859 6694 9889'),
                        Text('E. saptalokadigital@gmail.com'),
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
                                    onPressed: (() {
                                      Navigator.pushReplacementNamed(
                                          context, ContactUsScreen.routeName);
                                    }),
                                    child: Row(
                                      children: [
                                        Text(
                                          'CONTACT US',
                                          style: TextStyle(color: Colors.white),
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
                                      textStyle: MaterialStateProperty.all(
                                          TextStyle(color: Colors.white)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      )),
                                    ),
                                  )
                                : OutlinedButton(
                                    onPressed: (() {
                                      Navigator.pushReplacementNamed(
                                          context, ContactUsScreen.routeName);
                                    }),
                                    child: Text(
                                      'CONTACT US',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          BorderSide(color: Colors.white)),
                                      textStyle: MaterialStateProperty.all(
                                          TextStyle(color: Colors.white)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
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
                                  border: Border.all(color: Colors.white)),
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
                                  border: Border.all(color: Colors.white)),
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
                                  border: Border.all(color: Colors.white)),
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
            padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 50),
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                                  onPressed: () {}, child: Text('IT Solution')),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Business Digital Solution')),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Digital Marketing')),
                            ],
                          ),
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
                          "SAPTALOKA DIGITAL",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Jalan Melong Tengah No.138'),
                        Text('Melong, Cimahi Cimahi Selatan, Jawa Barat 40534'),
                        Text('Indonesia'),
                        Text('P: +62 859 6694 9889'),
                        Text('E. saptalokadigital@gmail.com'),
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
                                    onPressed: (() {
                                      Navigator.pushReplacementNamed(
                                          context, ContactUsScreen.routeName);
                                    }),
                                    child: Row(
                                      children: [
                                        Text(
                                          'CONTACT US',
                                          style: TextStyle(color: Colors.white),
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
                                      textStyle: MaterialStateProperty.all(
                                          TextStyle(color: Colors.white)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      )),
                                    ),
                                  )
                                : OutlinedButton(
                                    onPressed: (() {
                                      Navigator.pushReplacementNamed(
                                          context, ContactUsScreen.routeName);
                                    }),
                                    child: Text(
                                      'CONTACT US',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          BorderSide(color: Colors.white)),
                                      textStyle: MaterialStateProperty.all(
                                          TextStyle(color: Colors.white)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
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
                                  border: Border.all(color: Colors.white)),
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
                                  border: Border.all(color: Colors.white)),
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
                                  border: Border.all(color: Colors.white)),
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
                  Container(
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
                        Text('Jalan Melong Tengah No.138'),
                        Text('Melong, Cimahi Cimahi Selatan, Jawa Barat 40534'),
                        Text('Indonesia'),
                        Text('P: +62 859 6694 9889'),
                        Text('E.  saptalokadigital@gmail.com'),
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
                                        Navigator.pushReplacementNamed(
                                            context, ContactUsScreen.routeName);
                                      }),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CONTACT US',
                                            style:
                                                TextStyle(color: Colors.white),
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
                                        textStyle: MaterialStateProperty.all(
                                            TextStyle(color: Colors.white)),
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
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all(
                                            BorderSide(color: Colors.white)),
                                        textStyle: MaterialStateProperty.all(
                                            TextStyle(color: Colors.white)),
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
                                    border: Border.all(color: Colors.white)),
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
                                    border: Border.all(color: Colors.white)),
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
                                    border: Border.all(color: Colors.white)),
                              ),
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
                                    onPressed: () {}, child: Text('Stories')),
                                SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Press Release')),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Media Coverage')),
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
                                    child: Text('IT Solution')),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Business Digital Solution')),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Digital Marketing')),
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
                          "SAPTALOKA DIGITAL",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Jalan Melong Tengah No.138'),
                        Text('Melong, Cimahi Cimahi Selatan, Jawa Barat 40534'),
                        Text('Indonesia'),
                        Text('P: +62 859 6694 9889'),
                        Text('E. saptalokadigital@gmail.com'),
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
                            duration: Duration(milliseconds: 10000),
                            child: _isHover
                                ? OutlinedButton(
                                    key: ValueKey<int>(0),
                                    onPressed: (() {
                                      Navigator.pushReplacementNamed(
                                          context, ContactUsScreen.routeName);
                                    }),
                                    child: Row(
                                      children: [
                                        Text(
                                          'CONTACT US',
                                          style: TextStyle(color: Colors.white),
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
                                      textStyle: MaterialStateProperty.all(
                                          TextStyle(color: Colors.white)),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  )
                                : OutlinedButton(
                                    key: ValueKey<int>(1),
                                    onPressed: (() {
                                      Navigator.pushReplacementNamed(
                                          context, ContactUsScreen.routeName);
                                    }),
                                    child: Text(
                                      'CONTACT US',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          BorderSide(color: Colors.white)),
                                      textStyle: MaterialStateProperty.all(
                                          TextStyle(color: Colors.white)),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
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
                            GestureDetector(
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
                                    border: Border.all(color: Colors.white)),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
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
                                    border: Border.all(color: Colors.white)),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _launchYT();
                                });
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
                                    border: Border.all(color: Colors.white)),
                              ),
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
    );
  }
}
