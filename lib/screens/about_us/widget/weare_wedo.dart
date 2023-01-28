import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

class WeAreWedo extends StatefulWidget {
  const WeAreWedo({super.key});

  @override
  State<WeAreWedo> createState() => _WeAreWedoState();
}

class _WeAreWedoState extends State<WeAreWedo> {
  List<String> weAre = [
    "Saptaloka Digital merupakan perusahaan yang bergerak di bidang IT & Business Consultant.",
    "Saptaloka Digital menawarkan jasa IT berupa pembuatan website, multiplatform apps dan game. Selain itu, kami juga menawarkan jasa digital marketing.",
    "Saptaloka Digital membantu perkembangan perusahaan-perusahaan dari berbagai industri."
  ];

  List<String> weDo = [
    "Memberi saran pada client tentang pemakaian IT untuk memenuhi target bisnis ataupun membantu problem solving dari masalah client.",
    "Membantu migrasi teknologi untuk memudahkan operasional bisnis client.",
    "Saat ini kami sedang mengembangkan produk platform digital ERP dan MES untuk mendukung pertumbuhan perusahaan-perusahaan dari berbagai industri."
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Responsive(
        mobile: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Container(
            width: screenSize.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenSize.width,
                  child: Column(
                    children: [
                      Container(
                        width: screenSize.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("We Are",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff013088),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: weAre.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                width: screenSize.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: screenSize.width,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.verified,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Flexible(
                                              child: Text(weAre[index],
                                                  style: GoogleFonts.inter(
                                                    height: 1.3,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: screenSize.width,
                  child: Column(
                    children: [
                      Container(
                        width: screenSize.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("We Do",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff013088),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: weDo.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                width: screenSize.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: screenSize.width,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.verified,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Flexible(
                                              child: Text(weDo[index],
                                                  style: GoogleFonts.inter(
                                                    height: 1.3,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        tablet: Padding(
          padding: const EdgeInsets.only(left: 100, right: 160),
          child: Container(
            width: screenSize.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenSize.width,
                  child: Column(
                    children: [
                      Container(
                        width: screenSize.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("We Are",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff013088),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: weAre.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                width: screenSize.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: screenSize.width,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.verified,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Flexible(
                                              child: Text(weAre[index],
                                                  style: GoogleFonts.inter(
                                                    height: 1.3,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: screenSize.width,
                  child: Column(
                    children: [
                      Container(
                        width: screenSize.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("We Do",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff013088),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: weDo.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                width: screenSize.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: screenSize.width,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.verified,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Flexible(
                                              child: Text(weDo[index],
                                                  style: GoogleFonts.inter(
                                                    height: 1.3,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        desktop: Padding(
          padding: const EdgeInsets.only(left: 130, right: 130),
          child: Container(
            width: screenSize.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: 400,
                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("We Are",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: weAre.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Container(
                                  width: screenSize.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: screenSize.width,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Flexible(
                                                child: Text(weAre[index],
                                                    style: GoogleFonts.inter(
                                                      height: 1.9,
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Container(
                    width: 400,
                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("We Do",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: weDo.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Container(
                                  width: screenSize.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: screenSize.width,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Flexible(
                                                child: Text(weDo[index],
                                                    style: GoogleFonts.inter(
                                                      height: 1.9,
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        large: Padding(
          padding: const EdgeInsets.only(left: 130, right: 130),
          child: Container(
            width: screenSize.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: 400,
                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("We Are",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: weAre.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Container(
                                  width: screenSize.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: screenSize.width,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Flexible(
                                                child: Text(weAre[index],
                                                    style: GoogleFonts.inter(
                                                      height: 1.9,
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Container(
                    width: 400,
                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("We Do",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: weDo.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Container(
                                  width: screenSize.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: screenSize.width,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Flexible(
                                                child: Text(weDo[index],
                                                    style: GoogleFonts.inter(
                                                      height: 1.9,
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
