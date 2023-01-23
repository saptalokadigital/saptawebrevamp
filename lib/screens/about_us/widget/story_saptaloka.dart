import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:styled_text/styled_text.dart';

class StorySaptaloka extends StatefulWidget {
  const StorySaptaloka({super.key});

  @override
  State<StorySaptaloka> createState() => _StorySaptalokaState();
}

class _StorySaptalokaState extends State<StorySaptaloka> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        width: screenSize.width,
        child: Responsive(
          mobile: Column(
            children: [
              Container(
                width: screenSize.width,
                child: Stack(
                  children: [
                    AnimateIfVisible(
                      key: const Key('item.1'),
                      duration: const Duration(milliseconds: 500),
                      builder:
                          (BuildContext context, Animation<double> animation) {
                        return FadeTransition(
                          opacity: Tween<double>(
                            begin: 0,
                            end: 1,
                          ).animate(animation),
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, -0.5),
                              end: Offset.zero,
                            ).animate(animation),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 230,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image_1.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        );
                      },
                    ),
                    // Positioned(
                    //   bottom: 0,
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     height: 50,
                    //     decoration: BoxDecoration(
                    //       gradient: LinearGradient(
                    //         begin: Alignment.topCenter,
                    //         end: Alignment.center,
                    //         colors: [
                    //           Color(0x00000000),
                    //           Color(0xFFFFFFFF).withOpacity(0.8),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
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
                padding: const EdgeInsets.only(left: 40, top: 10, right: 40),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Container(
                          width: screenSize.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: AnimateIfVisible(
                                  key: const Key('item.2'),
                                  duration: const Duration(milliseconds: 500),
                                  builder: (BuildContext context,
                                      Animation<double> animation) {
                                    return FadeTransition(
                                      opacity: Tween<double>(
                                        begin: 0,
                                        end: 1,
                                      ).animate(animation),
                                      child: SlideTransition(
                                        position: Tween<Offset>(
                                          begin: const Offset(-0.5, 0),
                                          end: Offset.zero,
                                        ).animate(animation),
                                        child:
                                            Text("Story of Saptaloka Digital",
                                                style: GoogleFonts.inter(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff013088),
                                                )),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: screenSize.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: AnimateIfVisible(
                                key: const Key('item.3'),
                                duration: const Duration(milliseconds: 500),
                                builder: (BuildContext context,
                                    Animation<double> animation) {
                                  return FadeTransition(
                                    opacity: Tween<double>(
                                      begin: 0,
                                      end: 1,
                                    ).animate(animation),
                                    child: SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(-0.5, 0),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: StyledText(
                                          text:
                                              """     <bold>Saptaloka Digital</bold> terbentuk pada tanggal 1 Januari 2022. <bold>Saptaloka Digital</bold> terbentuk dari gabungan dua perusahaan, yaitu <bold>Bengkel Coding</bold> dan <bold>Alsi Media</bold>.
                              
      Bengkel Coding merupakan perusahaan yang bergerak di bidang jasa <miring>IT Consultant</miring> sejak tahun 2020-2021. Selama perjalanannya, Bengkel Coding telah menyelesaikan <miring>project-project</miring> dari beberapa klien.
                              
      Alsi Media merupakan perusahaan yang bergerak di bidang jasa <miring>Digital Marketing</miring> dan <miring>Production House</miring>. Pada perjalanannya Alsi Media telah menerima jasa pembuatan video dan fotografi serta menyelesaikan lebih dari 5 <miring>Project Digital Marketing</miring>.
                              
      Kedua perusahaan tersebut akhirnya memutuskan untuk bergabung dan <miring>re-branding</miring> menjadi <bold>Saptaloka Digital</bold> yang bergerak di bidang <miring>IT & Business Consultant</miring>.
                              
                              """,
                                          tags: {
                                            'bold': StyledTextTag(
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            'miring': StyledTextTag(
                                                style: TextStyle(
                                                    fontStyle:
                                                        FontStyle.italic)),
                                          },
                                          style: GoogleFonts.inter(
                                            fontSize: 15,
                                            color: Colors.black,
                                          )),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          tablet: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 750,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_1.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 750,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 750,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.center,
                    colors: [
                      Color(0x00000000),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: AnimateIfVisible(
                                    key: const Key('item.1'),
                                    duration: const Duration(milliseconds: 500),
                                    builder: (BuildContext context,
                                        Animation<double> animation) {
                                      return FadeTransition(
                                        opacity: Tween<double>(
                                          begin: 0,
                                          end: 1,
                                        ).animate(animation),
                                        child: SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(-0.5, 0),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child:
                                              Text("Story of Saptaloka Digital",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 48,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff013088),
                                                  )),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: AnimateIfVisible(
                                    key: const Key('item.2'),
                                    duration: const Duration(milliseconds: 500),
                                    builder: (BuildContext context,
                                        Animation<double> animation) {
                                      return FadeTransition(
                                        opacity: Tween<double>(
                                          begin: 0,
                                          end: 1,
                                        ).animate(animation),
                                        child: SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(-0.5, 0),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child: StyledText(
                                              text:
                                                  """     <bold>Saptaloka Digital</bold> terbentuk pada tanggal 1 Januari 2022. <bold>Saptaloka Digital</bold> terbentuk dari gabungan dua perusahaan, yaitu <bold>Bengkel Coding</bold> dan <bold>Alsi Media</bold>.
                                  
      Bengkel Coding merupakan perusahaan yang bergerak di bidang jasa <miring>IT Consultant</miring> sejak tahun 2020-2021. Selama perjalanannya, Bengkel Coding telah menyelesaikan <miring>project-project</miring> dari beberapa klien.
                                  
      Alsi Media merupakan perusahaan yang bergerak di bidang jasa <miring>Digital Marketing</miring> dan <miring>Production House</miring>. Pada perjalanannya Alsi Media telah menerima jasa pembuatan video dan fotografi serta menyelesaikan lebih dari 5 <miring>Project Digital Marketing</miring>.
                                  
      Kedua perusahaan tersebut akhirnya memutuskan untuk bergabung dan <miring>re-branding</miring> menjadi <bold>Saptaloka Digital</bold> yang bergerak di bidang <miring>IT & Business Consultant</miring>.
                                  
                                  """,
                                              tags: {
                                                'bold': StyledTextTag(
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                'miring': StyledTextTag(
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic)),
                                              },
                                              style: GoogleFonts.inter(
                                                fontSize: 18,
                                                color: Colors.black,
                                              )),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          desktop: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo-sapta-biru.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.center,
                    colors: [
                      Color(0x00000000),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: AnimateIfVisible(
                                    key: const Key('item.1'),
                                    duration: const Duration(milliseconds: 500),
                                    builder: (BuildContext context,
                                        Animation<double> animation) {
                                      return FadeTransition(
                                        opacity: Tween<double>(
                                          begin: 0,
                                          end: 1,
                                        ).animate(animation),
                                        child: SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(-0.5, 0),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child:
                                              Text("Story of Saptaloka Digital",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 52,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff013088),
                                                  )),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: AnimateIfVisible(
                                    key: const Key('item.2'),
                                    duration: const Duration(milliseconds: 500),
                                    builder: (BuildContext context,
                                        Animation<double> animation) {
                                      return FadeTransition(
                                        opacity: Tween<double>(
                                          begin: 0,
                                          end: 1,
                                        ).animate(animation),
                                        child: SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(-0.5, 0),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child: StyledText(
                                              text:
                                                  """      <bold>Saptaloka Digital</bold> terbentuk pada tanggal 1 Januari 2022. <bold>Saptaloka Digital</bold> terbentuk dari gabungan dua perusahaan, yaitu <bold>Bengkel Coding</bold> dan <bold>Alsi Media</bold>.
                                  
      Bengkel Coding merupakan perusahaan yang bergerak di bidang jasa <miring>IT Consultant</miring> sejak tahun 2020-2021. Selama perjalanannya, Bengkel Coding telah menyelesaikan <miring>project-project</miring> dari beberapa klien.
                                  
      Alsi Media merupakan perusahaan yang bergerak di bidang jasa <miring>Digital Marketing</miring> dan <miring>Production House</miring>. Pada perjalanannya Alsi Media telah menerima jasa pembuatan video dan fotografi serta menyelesaikan lebih dari 5 <miring>Project Digital Marketing</miring>.
                                  
      Kedua perusahaan tersebut akhirnya memutuskan untuk bergabung dan <miring>re-branding</miring> menjadi <bold>Saptaloka Digital</bold> yang bergerak di bidang <miring>IT & Business Consultant</miring>.
                                  
""",
                                              tags: {
                                                'bold': StyledTextTag(
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                'miring': StyledTextTag(
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic)),
                                              },
                                              style: GoogleFonts.inter(
                                                fontSize: 22,
                                                color: Colors.black,
                                              )),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
                    begin: Alignment.centerRight,
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.center,
                    colors: [
                      Color(0x00000000),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: AnimateIfVisible(
                                    key: const Key('item.1'),
                                    duration: const Duration(milliseconds: 500),
                                    builder: (BuildContext context,
                                        Animation<double> animation) {
                                      return FadeTransition(
                                        opacity: Tween<double>(
                                          begin: 0,
                                          end: 1,
                                        ).animate(animation),
                                        child: SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(-0.5, 0),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child:
                                              Text("Story of Saptaloka Digital",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 70,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff013088),
                                                  )),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: AnimateIfVisible(
                                    key: const Key('item.2'),
                                    duration: const Duration(milliseconds: 500),
                                    builder: (BuildContext context,
                                        Animation<double> animation) {
                                      return FadeTransition(
                                        opacity: Tween<double>(
                                          begin: 0,
                                          end: 1,
                                        ).animate(animation),
                                        child: SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(-0.5, 0),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child: StyledText(
                                              text:
                                                  """     <bold>Saptaloka Digital</bold> terbentuk pada tanggal 1 Januari 2022. <bold>Saptaloka Digital</bold> terbentuk dari gabungan dua perusahaan, yaitu <bold>Bengkel Coding</bold> dan <bold>Alsi Media</bold>.
                                  
      Bengkel Coding merupakan perusahaan yang bergerak di bidang jasa <miring>IT Consultant</miring> sejak tahun 2020-2021. Selama perjalanannya, Bengkel Coding telah menyelesaikan <miring>project-project</miring> dari beberapa klien.
                                  
      Alsi Media merupakan perusahaan yang bergerak di bidang jasa <miring>Digital Marketing</miring> dan <miring>Production House</miring>. Pada perjalanannya Alsi Media telah menerima jasa pembuatan video dan fotografi serta menyelesaikan lebih dari 5 <miring>Project Digital Marketing</miring>.
                                  
      Kedua perusahaan tersebut akhirnya memutuskan untuk bergabung dan <miring>re-branding</miring> menjadi <bold>Saptaloka Digital</bold> yang bergerak di bidang <miring>IT & Business Consultant</miring>.
                                  
                                  """,
                                              tags: {
                                                'bold': StyledTextTag(
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                'miring': StyledTextTag(
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic)),
                                              },
                                              style: GoogleFonts.inter(
                                                letterSpacing: 0.1,
                                                fontSize: 25,
                                                color: Colors.black,
                                              )),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
