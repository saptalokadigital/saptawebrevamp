import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

class VisiMisi extends StatefulWidget {
  const VisiMisi({super.key});

  @override
  State<VisiMisi> createState() => _VisiMisiState();
}

class _VisiMisiState extends State<VisiMisi> {
  List<String> misi = [
    "Mengembangkan solusi Shared Services dan Digital Solution yang inovatif untuk peningkatan daya saing bisnis dan kemudahan bagi customer dan stakeholder",
    "Mengembangkan sistem manajemen untuk pengembangan, penyediaan, dan pengelolaan layanan Shared Services dan Digital Solution yang unggul dan berorientasi kepada kepuasan pelanggan",
    "Memberikan pelayanan terbaik demi tercapainya kepuasan pelanggan dengan jaminan kualitas pekerjaan, kecepatan, ketepatan, dan harga yang kompetitif",
    "Meningkatkan kemampuan dan mengoptimalkan pengelolaan sumber daya manusia yang unggul dan dapat dipercaya",
    "Meningkatkan value perusahaan secara berkesinambungan."
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        width: screenSize.width,
        child: Responsive(
          mobile: Column(
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image_1.png"),
                          fit: BoxFit.cover)),
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: 800,
                //   decoration: const BoxDecoration(
                //     gradient: LinearGradient(
                //       begin: Alignment.centerLeft,
                //       end: Alignment.center,
                //       colors: [
                //         Color(0x00000000),
                //         Color(0xFFFFFFFF),
                //       ],
                //     ),
                //   ),
                // ),
              ]),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 800,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.bottomLeft,
              //       end: Alignment.center,
              //       colors: [
              //         Color(0x00000000),
              //         Color(0xFFFFFFFF),
              //       ],
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(right: 40, top: 10, left: 40),
                child: Container(
                  width: screenSize.width,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Our Vision & Mision",
                                style: GoogleFonts.inter(
                                  fontSize: 25,
                                  color: Color(0xff013088),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: screenSize.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                  "Menjadi perusahaan Shared Services & Digital Solution yang berdaya saing dengan memberikan layanan & solusi terbaik, serta bernilai tambah bagi customer & stakeholder",
                                  style: GoogleFonts.inter(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff013088),
                                  )),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: misi.length,
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
                                              child: Text(misi[index],
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
              )
            ],
          ),
          tablet: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 900,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_1.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 900,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.center,
                    colors: [
                      Color(0x00000000),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 800,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.bottomLeft,
              //       end: Alignment.center,
              //       colors: [
              //         Color(0x00000000),
              //         Color(0xFFFFFFFF),
              //       ],
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(right: 50, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 370,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Our Vision & Mision",
                                    style: GoogleFonts.inter(
                                      fontSize: 25,
                                      color: Color(0xff013088),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: screenSize.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                      "Menjadi perusahaan Shared Services & Digital Solution yang berdaya saing dengan memberikan layanan & solusi terbaik, serta bernilai tambah bagi customer & stakeholder",
                                      style: GoogleFonts.inter(
                                        fontSize: 35,
                                        height: 1.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff013088),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: misi.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Container(
                                    width: screenSize.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  child: Text(misi[index],
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
                    )
                  ],
                ),
              )
            ],
          ),
          desktop: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_1.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.center,
                    colors: [
                      Color(0x00000000),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 800,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.bottomLeft,
              //       end: Alignment.center,
              //       colors: [
              //         Color(0x00000000),
              //         Color(0xFFFFFFFF),
              //       ],
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(right: 100, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 570,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Our Vision & Mision",
                                    style: GoogleFonts.inter(
                                      fontSize: 25,
                                      color: Color(0xff013088),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: screenSize.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                      "Menjadi perusahaan Shared Services & Digital Solution yang berdaya saing dengan memberikan layanan & solusi terbaik, serta bernilai tambah bagi customer & stakeholder",
                                      style: GoogleFonts.inter(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff013088),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: misi.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Container(
                                    width: screenSize.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  child: Text(misi[index],
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
                    )
                  ],
                ),
              )
            ],
          ),
          large: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_1.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.center,
                    colors: [
                      Color(0x00000000),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 800,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.bottomLeft,
              //       end: Alignment.center,
              //       colors: [
              //         Color(0x00000000),
              //         Color(0xFFFFFFFF),
              //       ],
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(right: 100, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 570,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Our Vision & Mision",
                                    style: GoogleFonts.inter(
                                      fontSize: 25,
                                      color: Color(0xff013088),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: screenSize.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                      "Menjadi perusahaan Shared Services & Digital Solution yang berdaya saing dengan memberikan layanan & solusi terbaik, serta bernilai tambah bagi customer & stakeholder",
                                      style: GoogleFonts.inter(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff013088),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: misi.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Container(
                                    width: screenSize.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  child: Text(misi[index],
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
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
