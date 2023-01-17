import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saptaloka_web_revamp/router_const.dart';

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
                    context.go('/');
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
                          context.go(aboutUsRoute);
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
                          context.go(solutionsRoute);
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
                          context.go(solutionsRoute);
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
                      context.go(contactUsRoute);
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
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.data!.exists) {
                return SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          snapshot.data!['judul'],
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xff013088),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.network(
                            snapshot.data!['imageUrl'],
                            fit: BoxFit.cover,
                            width: 500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(snapshot.data!['deskripsi']),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text('is empty'),
                  ),
                );
              }
            }
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('is empty'),
              ),
            );
          }),
        ),
      ),
    );
  }
}