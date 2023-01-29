import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/router_const.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/custom_text_tag.dart';
import '../../widgets/drawer.dart';

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
    return Stack(
      children: [
        Responsive(
          large: Scaffold(
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
                              image:
                                  AssetImage('assets/images/logo_header.png'),
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
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
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
                              value
                                  ? _isHovering[2] = true
                                  : _isHovering[2] = false;
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
              width: screenSize.width,
              height: screenSize.height,
              child: AnimateIfVisibleWrapper(
                showItemInterval: Duration(milliseconds: 500),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(40),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: StreamBuilder<DocumentSnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('NewsContent')
                                      .doc(widget.id!)
                                      .snapshots(),
                                  builder: ((context, snapshot) {
                                    if (snapshot.hasError) {
                                      return Text('Something went wrong');
                                    } else if (snapshot.data != null ||
                                        snapshot.hasData) {
                                      return SingleChildScrollView(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text(
                                                  snapshot.data!['judul'],
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30,
                                                    color: Color(0xff013088),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                                child: Image.network(
                                                  snapshot.data!['imageUrl'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              CustomTextTag(
                                                text:
                                                    snapshot.data!['deskripsi'],
                                                style: GoogleFonts.inter(
                                                  fontSize: 25,
                                                  color: Color.fromARGB(
                                                      255, 58, 60, 63),
                                                ),
                                              ),
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
                                  }),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    width: double.infinity,
                                    height: 400,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Recent Posts',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              color: Color(0xff013088),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 140),
                                              child:
                                                  StreamBuilder<QuerySnapshot>(
                                                stream: FirebaseFirestore
                                                    .instance
                                                    .collection('NewsContent')
                                                    .snapshots(),
                                                builder: ((context, snapshot) {
                                                  if (snapshot.hasError) {
                                                    return Text(
                                                        'Something went wrong');
                                                  } else if (snapshot.hasData ||
                                                      snapshot.data != null) {
                                                    return ListView.builder(
                                                      itemCount: snapshot
                                                          .data!.docs.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 15.0),
                                                            child: TextButton(
                                                              onPressed: () {
                                                                context.go(
                                                                    '/News/${snapshot.data!.docs[index].get('id')}');
                                                              },
                                                              child: Text(
                                                                '${snapshot.data!.docs[index].get('judul')}',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ));
                                                      },
                                                    );
                                                  }
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors
                                                                  .orangeAccent),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                          )
                                        ]),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          desktop: Scaffold(
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
                              image:
                                  AssetImage('assets/images/logo_header.png'),
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
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
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
                              value
                                  ? _isHovering[2] = true
                                  : _isHovering[2] = false;
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
              width: screenSize.width,
              height: screenSize.height,
              child: AnimateIfVisibleWrapper(
                showItemInterval: Duration(milliseconds: 500),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(40),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: StreamBuilder<DocumentSnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('NewsContent')
                                      .doc(widget.id!)
                                      .snapshots(),
                                  builder: ((context, snapshot) {
                                    if (snapshot.hasError) {
                                      return Text('Something went wrong');
                                    } else if (snapshot.data != null ||
                                        snapshot.hasData) {
                                      return SingleChildScrollView(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text(
                                                  snapshot.data!['judul'],
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30,
                                                    color: Color(0xff013088),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                                child: Image.network(
                                                  snapshot.data!['imageUrl'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              CustomTextTag(
                                                text:
                                                    snapshot.data!['deskripsi'],
                                                style: GoogleFonts.inter(
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 58, 60, 63),
                                                ),
                                              ),
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
                                  }),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    width: double.infinity,
                                    height: 400,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Recent Posts',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              color: Color(0xff013088),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 140),
                                              child:
                                                  StreamBuilder<QuerySnapshot>(
                                                stream: FirebaseFirestore
                                                    .instance
                                                    .collection('NewsContent')
                                                    .snapshots(),
                                                builder: ((context, snapshot) {
                                                  if (snapshot.hasError) {
                                                    return Text(
                                                        'Something went wrong');
                                                  } else if (snapshot.hasData ||
                                                      snapshot.data != null) {
                                                    return ListView.builder(
                                                      itemCount: snapshot
                                                          .data!.docs.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 15.0),
                                                            child: TextButton(
                                                              onPressed: () {
                                                                context.go(
                                                                    '/News/${snapshot.data!.docs[index].get('id')}');
                                                              },
                                                              child: Text(
                                                                '${snapshot.data!.docs[index].get('judul')}',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ));
                                                      },
                                                    );
                                                  }
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors
                                                                  .orangeAccent),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                          )
                                        ]),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          tablet: Scaffold(
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
                              image:
                                  AssetImage('assets/images/logo_header.png'),
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
                                            : const Color.fromARGB(
                                                255, 0, 0, 0),
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
                              value
                                  ? _isHovering[2] = true
                                  : _isHovering[2] = false;
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
              width: screenSize.width,
              height: screenSize.height,
              child: AnimateIfVisibleWrapper(
                showItemInterval: Duration(milliseconds: 500),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(40),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: StreamBuilder<DocumentSnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('NewsContent')
                                      .doc(widget.id!)
                                      .snapshots(),
                                  builder: ((context, snapshot) {
                                    if (snapshot.hasError) {
                                      return Text('Something went wrong');
                                    } else if (snapshot.data != null ||
                                        snapshot.hasData) {
                                      return SingleChildScrollView(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text(
                                                  snapshot.data!['judul'],
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30,
                                                    color: Color(0xff013088),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                                child: Image.network(
                                                  snapshot.data!['imageUrl'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              CustomTextTag(
                                                text:
                                                    snapshot.data!['deskripsi'],
                                                style: GoogleFonts.inter(
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 58, 60, 63),
                                                ),
                                              ),
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
                                  }),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    width: double.infinity,
                                    height: 400,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Recent Posts',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              color: Color(0xff013088),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 140),
                                              child:
                                                  StreamBuilder<QuerySnapshot>(
                                                stream: FirebaseFirestore
                                                    .instance
                                                    .collection('NewsContent')
                                                    .snapshots(),
                                                builder: ((context, snapshot) {
                                                  if (snapshot.hasError) {
                                                    return Text(
                                                        'Something went wrong');
                                                  } else if (snapshot.hasData ||
                                                      snapshot.data != null) {
                                                    return ListView.builder(
                                                      itemCount: snapshot
                                                          .data!.docs.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 15.0),
                                                            child: TextButton(
                                                              onPressed: () {
                                                                context.go(
                                                                    '/News/${snapshot.data!.docs[index].get('id')}');
                                                              },
                                                              child: Text(
                                                                '${snapshot.data!.docs[index].get('judul')}',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ));
                                                      },
                                                    );
                                                  }
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors
                                                                  .orangeAccent),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                          )
                                        ]),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          mobile: Scaffold(
            appBar: AppBar(
              leading: Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Image.asset('assets/images/logo_header.png')),
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Color(0xff019CDE)),
            ),
            endDrawer: MenuDraw(),
            body: Container(
              width: screenSize.width,
              height: screenSize.height,
              child: AnimateIfVisibleWrapper(
                showItemInterval: Duration(milliseconds: 500),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: StreamBuilder<DocumentSnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('NewsContent')
                              .doc(widget.id!)
                              .snapshots(),
                          builder: ((context, snapshot) {
                            if (snapshot.hasError) {
                              return Text('Something went wrong');
                            } else if (snapshot.data != null ||
                                snapshot.hasData) {
                              return SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        snapshot.data!['judul'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Color(0xff013088),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: Image.network(
                                        snapshot.data!['imageUrl'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    CustomTextTag(
                                      text: snapshot.data!['deskripsi'],
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 58, 60, 63),
                                      ),
                                    ),
                                  ],
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
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Divider(
                        height: 10,
                        indent: 5,
                        endIndent: 5,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: double.infinity,
                        height: 500,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Recent Posts',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Color(0xff013088),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: StreamBuilder<QuerySnapshot>(
                                    stream: FirebaseFirestore.instance
                                        .collection('NewsContent')
                                        .limit(5)
                                        .snapshots(),
                                    builder: ((context, snapshot) {
                                      if (snapshot.hasError) {
                                        return Text('Something went wrong');
                                      } else if (snapshot.hasData ||
                                          snapshot.data != null) {
                                        return ListView.builder(
                                          itemCount: snapshot.data!.docs.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0),
                                                child: TextButton(
                                                  onPressed: () {
                                                    context.go(
                                                        '/News/${snapshot.data!.docs[index].get('id')}');
                                                  },
                                                  child: Text(
                                                    '${snapshot.data!.docs[index].get('judul')}',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ));
                                          },
                                        );
                                      }
                                      return Center(
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Colors.orangeAccent),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              )
                            ]),
                      ),
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        _isHovering[1]
            ? Padding(
                padding: const EdgeInsets.only(left: 283, right: 100, top: 23),
                child: Container(
                  width: 230,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onPressed: () {
                      context.go(solutionsRoute);
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
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
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 3,
                                  decoration: BoxDecoration(color: Colors.blue),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 15, bottom: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  /* context.go(itSolutionsRoute); */
                                                },
                                                child: Text(
                                                  'IT Solution',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  context.go(bDSolutionsRoute);
                                                },
                                                child: Text(
                                                  'Business Digital Solution',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  context.go(solutionsRoute);
                                                },
                                                child: Text(
                                                  'Digital Marketing',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
