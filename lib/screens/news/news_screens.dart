import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewsScreens extends StatefulWidget {
  String? id;
  NewsScreens({super.key, this.id});

  @override
  State<NewsScreens> createState() => _NewsScreensState();
}

class _NewsScreensState extends State<NewsScreens> {
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
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: Container(
          alignment: Alignment.topCenter,
          width: screenSize.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo_header.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Flexible(
                  child: Stack(
                    children: [
                      TextButton(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[0] = true
                                : _isHovering[0] = false;
                          });
                        },
                        onPressed: () {
                          context.go('/AboutUs');
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => AboutUsScreens()));--
                        },
                        child: Text(
                          'About Us',
                          style: GoogleFonts.inter(
                            color: _isHovering[0]
                                ? const Color(0xff013088)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 33,
                ),
                _isHovering[1]
                    ? InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        },
                        onTap: () {
                          context.go('/Solutions');
                        },
                        child: Container(
                          width: 95,
                          child: Row(
                            children: [
                              Text(
                                'Solutions',
                                style: GoogleFonts.inter(
                                  color: Colors.transparent,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.transparent,
                              )
                            ],
                          ),
                        ),
                      )
                    : InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        },
                        onTap: () {
                          context.go('/Solutions');
                        },
                        child: Container(
                          width: 95,
                          child: Row(
                            children: [
                              Text(
                                'Solutions',
                                style: GoogleFonts.inter(
                                  color: _isHovering[1]
                                      ? const Color(0xff013088)
                                      : const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: _isHovering[1]
                                    ? const Color(0xff013088)
                                    : const Color.fromARGB(255, 0, 0, 0),
                              )
                            ],
                          ),
                        ),
                      ),
                SizedBox(width: 22),
                Flexible(
                  child: TextButton(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onPressed: () {
                      context.go('/Solutions');
                    },
                    child: Text(
                      'Contact Us',
                      style: GoogleFonts.inter(
                        color: _isHovering[2]
                            ? const Color(0xff013088)
                            : const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection('NewsContent')
              .doc(widget.id!)
              .snapshots(),
          builder: ((context, snapshot) {
            return Container(
              child: Text(snapshot.data!['deskripsi']),
            );
          }),
        ),
      ),
    );
  }
}
