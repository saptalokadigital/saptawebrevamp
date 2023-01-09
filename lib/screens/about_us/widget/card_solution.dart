import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

class CardSolutionLong extends StatefulWidget {
  const CardSolutionLong({super.key});

  @override
  State<CardSolutionLong> createState() => _CardSolutionLongState();
}

class _CardSolutionLongState extends State<CardSolutionLong> {
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
    return HoverWidget(
      onHover: (e) {},
      child: Container(
        height: 500,
        width: 300,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 9.0,
              spreadRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 140, 35, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logonetflix.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        'SAPTA ERP',
                        style: GoogleFonts.bebasNeue(
                          color: Color.fromARGB(255, 9, 77, 133),
                          textStyle: const TextStyle(
                            fontSize: 32.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        'Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumLorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum  lorem ipsum lorem lorem ipsum lorem  lorem ipsum lorem',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          textStyle: const TextStyle(
                            height: 1.5,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      hoverChild: Container(
        height: 500,
        width: 300,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 9.0,
              spreadRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [Colors.transparent, Color(0xFFFFFFFF)])),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 140, 35, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logonetflix.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        'SAPTA ERP',
                        style: GoogleFonts.bebasNeue(
                          color: Color.fromARGB(255, 9, 77, 133),
                          textStyle: const TextStyle(
                            fontSize: 32.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        'Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumLorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum  lorem ipsum lorem lorem ipsum lorem  lorem ipsum lorem',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          textStyle: const TextStyle(
                            height: 1.5,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 5, 65, 114).withOpacity(0.85),
                    Colors.blue.withOpacity(0.85),

                    //add more colors for gradient
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter, //end of the gradient color
                  //stops for individual color
                  //set the stops number equal to numbers of color
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pelajari lebih lanjut tentang',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        textStyle: const TextStyle(
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SAPTA ERP',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        textStyle: const TextStyle(
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[5] = true
                              : _isHovering[5] = false;
                        });
                      },
                      child: _isHovering[5]
                          ? Container(
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'SELENGKAPNYA',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      textStyle: const TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
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
                            )
                          : Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'SELENGKAPNYA',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        textStyle: const TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
