// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Legal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                        Text('Graha Aktiva, 11th Floor,'),
                        Text(
                            'Jl. H.R. Rasuna Said, Kav 3, South Jakarta, 12950 -'),
                        Text('Indonesia'),
                        Text('P: +62 21 2941 0371'),
                        Text('E. ptsisi@sisi.sig.id'),
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
                                FontAwesomeIcons.linkedinIn,
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
                                Text(
                                  'Stories',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Press Release',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Media Coverage',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'life at SISI',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Insight',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 105, top: 5),
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
                                Text(
                                  'Shared Services',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Digital Solution',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'System Integrator',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 75, top: 70),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Legal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SizedBox(
                    height: 10.0,
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
                        Text('Graha Aktiva, 11th Floor,'),
                        Text(
                            'Jl. H.R. Rasuna Said, Kav 3, South Jakarta, 12950 -'),
                        Text('Indonesia'),
                        Text('P: +62 21 2941 0371'),
                        Text('E. ptsisi@sisi.sig.id'),
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
                                FontAwesomeIcons.linkedinIn,
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
                                Text('Shared Services'),
                                Text('Digital Solution'),
                                Text('System Integrator'),
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
                                  "Legal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                        Flexible(
                          child: Container(
                            width: 300,
                            height: 40,
                            child: Text(
                              "PT SINERGI INFORMATIKA SEMEN INDONESIA",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Graha Aktiva, 11th Floor,'),
                        Flexible(
                          child: Container(
                            width: 290,
                            height: 40,
                            child: Text(
                                'Jl. H.R. Rasuna Said, Kav 3, South Jakarta, 12950 -'),
                          ),
                        ),
                        Text('Indonesia'),
                        Text('P: +62 21 2941 0371'),
                        Text('E. ptsisi@sisi.sig.id'),
                        Flexible(
                          child: Container(
                            width: 290,
                            height: 40,
                            child: Text(
                                'E. pr.sisi@sisi.sig.id (Media & External Invitation'),
                          ),
                        ),
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
                                      onPressed: (() {}),
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
                                FontAwesomeIcons.linkedinIn,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Legal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                        Text('Graha Aktiva, 11th Floor,'),
                        Text(
                            'Jl. H.R. Rasuna Said, Kav 3, South Jakarta, 12950 -'),
                        Text('Indonesia'),
                        Text('P: +62 21 2941 0371'),
                        Text('E. ptsisi@sisi.sig.id'),
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
                            duration: Duration(milliseconds: 10000),
                            child: _isHover
                                ? OutlinedButton(
                                    key: ValueKey<int>(0),
                                    onPressed: (() {}),
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
                                FontAwesomeIcons.linkedinIn,
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
    );
  }
}
