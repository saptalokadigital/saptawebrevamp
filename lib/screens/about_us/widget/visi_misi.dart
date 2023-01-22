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
    "Menjadi mitra kunci dengan membangun kepercayaan client dalam membangun alur bisnis secara digital.",
    "Membuat produk dalam bidang IT untuk memberikan solusi terhadap permasalahan masyarakat pada era 5.0.",
    "Menjadi pelopor jasa IT dan Digital Marketing serta mengembangkan inovasi di era industri 5.0.",
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
                                  "Membantu mengembangkan bisnis client dalam bidang konsultan IT dan Digital Marketing serta menghasilkan produk teknologi yang berguna bagi masyarakat.",
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
                                      "Membantu mengembangkan bisnis client dalam bidang konsultan IT dan Digital Marketing serta menghasilkan produk teknologi yang berguna bagi masyarakat.",
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
                                      "Membantu mengembangkan bisnis client dalam bidang konsultan IT dan Digital Marketing serta menghasilkan produk teknologi yang berguna bagi masyarakat.",
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
                                      "Membantu mengembangkan bisnis client dalam bidang konsultan IT dan Digital Marketing serta menghasilkan produk teknologi yang berguna bagi masyarakat.",
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
