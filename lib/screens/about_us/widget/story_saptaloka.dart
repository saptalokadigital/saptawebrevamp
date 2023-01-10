import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/image_1.png"),
                              fit: BoxFit.cover)),
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
                                child: Text("Story Of Saptaloka Digital",
                                    style: GoogleFonts.inter(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff013088),
                                    )),
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
                              child: Text(
                                  """Pada tahun 2020 akhir terbentuk Bengkel Coding yang merupakan sebuah startup dan bergerak di bidang jasa IT Consultant. Pada awalnya seorang programmer yang bernama Fikri Zaki Aditama bertemu kembali dengan teman lamanya, yaitu Muhammad Nur Rizka Novanto yang memiliki latar belakang di bidang Manajemen Bisnis. Mereka berdua berunding untuk merumuskan sebuah startup. Setelah perundingan tersebut Fikri merekrut Dede Miftahul Anwar yang sebelumnya pernah ada dalam satu tim dengan Fikri untuk terlibat dalam perumusan startup ini. 

Fikri dan Dede pernah membuat sebuah tim IT pada 7 Juli 2019 yang bernama Erudev Studio dengan anggota berjumlah 6 orang. Namun perjalanan tim tersebut harus terhenti karena tidak adanya manajemen yang mengatur semua permasalahan internal. Sehingga pada awal tahun 2021 telah resmi terbentuk sebuah startup yang bernama Bengkel Coding dengan jumlah 2 orang programmer dan 1 orang manajemen. Selama masa perjalanannya di tahun 2021, Bengkel Coding telah menyelesaikan beberapa project.

""",
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    color: Colors.black,
                                  )),
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
                            width: 220,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text("Story Of Saptaloka Digital",
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
                            height: 25,
                          ),
                          Container(
                            width: 470,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                      """Pada tahun 2020 akhir terbentuk Bengkel Coding yang merupakan sebuah startup dan bergerak di bidang jasa IT Consultant. Pada awalnya seorang programmer yang bernama Fikri Zaki Aditama bertemu kembali dengan teman lamanya, yaitu Muhammad Nur Rizka Novanto yang memiliki latar belakang di bidang Manajemen Bisnis. Mereka berdua berunding untuk merumuskan sebuah startup. Setelah perundingan tersebut Fikri merekrut Dede Miftahul Anwar yang sebelumnya pernah ada dalam satu tim dengan Fikri untuk terlibat dalam perumusan startup ini. 

Fikri dan Dede pernah membuat sebuah tim IT pada 7 Juli 2019 yang bernama Erudev Studio dengan anggota berjumlah 6 orang. Namun perjalanan tim tersebut harus terhenti karena tidak adanya manajemen yang mengatur semua permasalahan internal. Sehingga pada awal tahun 2021 telah resmi terbentuk sebuah startup yang bernama Bengkel Coding dengan jumlah 2 orang programmer dan 1 orang manajemen. Selama masa perjalanannya di tahun 2021, Bengkel Coding telah menyelesaikan beberapa project.

""",
                                      style: GoogleFonts.inter(
                                        fontSize: 17,
                                        color: Colors.black,
                                      )),
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
                            width: 420,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text("Story Of Saptaloka Digital",
                                      style: GoogleFonts.inter(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff013088),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 570,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                      """Pada tahun 2020 akhir terbentuk Bengkel Coding yang merupakan sebuah startup dan bergerak di bidang jasa IT Consultant. Pada awalnya seorang programmer yang bernama Fikri Zaki Aditama bertemu kembali dengan teman lamanya, yaitu Muhammad Nur Rizka Novanto yang memiliki latar belakang di bidang Manajemen Bisnis. Mereka berdua berunding untuk merumuskan sebuah startup. Setelah perundingan tersebut Fikri merekrut Dede Miftahul Anwar yang sebelumnya pernah ada dalam satu tim dengan Fikri untuk terlibat dalam perumusan startup ini.

Fikri dan Dede pernah membuat sebuah tim IT pada 7 Juli 2019 yang bernama Erudev Studio dengan anggota berjumlah 6 orang. Namun perjalanan tim tersebut harus terhenti karena tidak adanya manajemen yang mengatur semua permasalahan internal. Sehingga pada awal tahun 2021 telah resmi terbentuk sebuah startup yang bernama Bengkel Coding dengan jumlah 2 orang programmer dan 1 orang manajemen. Selama masa perjalanannya di tahun 2021, Bengkel Coding telah menyelesaikan beberapa project.

""",
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        color: Colors.black,
                                      )),
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
                            width: 420,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text("Story Of Saptaloka Digital",
                                      style: GoogleFonts.inter(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff013088),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 470,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                      """Pada tahun 2020 akhir terbentuk Bengkel Coding yang merupakan sebuah startup dan bergerak di bidang jasa IT Consultant. Pada awalnya seorang programmer yang bernama Fikri Zaki Aditama bertemu kembali dengan teman lamanya, yaitu Muhammad Nur Rizka Novanto yang memiliki latar belakang di bidang Manajemen Bisnis. Mereka berdua berunding untuk merumuskan sebuah startup. Setelah perundingan tersebut Fikri merekrut Dede Miftahul Anwar yang sebelumnya pernah ada dalam satu tim dengan Fikri untuk terlibat dalam perumusan startup ini. 
                                      
Fikri dan Dede pernah membuat sebuah tim IT pada 7 Juli 2019 yang bernama Erudev Studio dengan anggota berjumlah 6 orang. Namun perjalanan tim tersebut harus terhenti karena tidak adanya manajemen yang mengatur semua permasalahan internal. Sehingga pada awal tahun 2021 telah resmi terbentuk sebuah startup yang bernama Bengkel Coding dengan jumlah 2 orang programmer dan 1 orang manajemen. Selama masa perjalanannya di tahun 2021, Bengkel Coding telah menyelesaikan beberapa project.

""",
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        color: Colors.black,
                                      )),
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
