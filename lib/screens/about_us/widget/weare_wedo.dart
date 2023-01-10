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
    "PT Sinergi Informatika Semen Indonesia (SISI) merupakan anak usaha dari PT Semen Indonesia (Persero) Tbk.",
    "SISI merupakan tim inti Pengembangan dan Dukungan Operasional ICT untuk Semen Indonesia dan seluruh anak perusahaannya.",
    "Saat ini kami juga menjadi penyedia platform digital e-commerce untuk seluruh ekosistem Semen Indonesia Group."
  ];

  List<String> weDo = [
    "Aktif berkontribusi di bidang IT dalam inovasi, pengembangan, dan keberlanjutan Semen Indonesia beserta seluruh anak perusahaannya.",
    "Berbagi keahlian pengalaman dengan bisnis dan industri lain dalam skema yang saling menguntungkan.",
    "Kami juga berkontribusi kepada komunitas dan negara untuk meningkatkan adopsi ICT dalam menumbuhkan daya saing dan menjadikan hidup lebih mudah."
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
