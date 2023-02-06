import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:styled_text/styled_text.dart';

class CoreValues extends StatelessWidget {
  const CoreValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: Container(
        width: MediaQuery.of(context).size.width,
        height: 800,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 800,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/aerial-view-business-team_11zon.jpg"),
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
            Padding(
              padding: const EdgeInsets.only(right: 500, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 420,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              StyledText(
                                text:
                                    "Core Values of <bold>Saptaloka Digital</bold>",
                                style: GoogleFonts.poppins(
                                  fontSize: 25,
                                  color: const Color(0xff013088),
                                ),
                                tags: {
                                  'bold': StyledTextTag(
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Text("' ALIVES '",
                                  style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 15,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 10
                                      ..color = const Color(0xff019CDE),
                                  )),
                              Text("' ALIVES '",
                                  style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 15,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const ItemCoreValues(
                          fontSize: 30,
                          fontSize2: 15,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Solutive",
                            deskripsi:
                                "Saptaloka Digital memberikan solusi untuk menyelesaikan permasalahan-permasalahan di bidang Digital.")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      desktop: Container(
        width: MediaQuery.of(context).size.width,
        height: 800,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 800,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/aerial-view-business-team_11zon.jpg"),
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
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 420,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              StyledText(
                                text:
                                    "Core Values of <bold>Saptaloka Digital</bold>",
                                style: GoogleFonts.poppins(
                                  fontSize: 25,
                                  color: const Color(0xff013088),
                                ),
                                tags: {
                                  'bold': StyledTextTag(
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Text("' ALIVES '",
                                  style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 15,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 10
                                      ..color = const Color(0xff019CDE),
                                  )),
                              Text("' ALIVES '",
                                  style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 15,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const ItemCoreValues(
                          fontSize: 30,
                          fontSize2: 15,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Solutive",
                            deskripsi:
                                "Saptaloka Digital memberikan solusi untuk menyelesaikan permasalahan-permasalahan di bidang Digital.")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: Container(
        width: MediaQuery.of(context).size.width,
        height: 800,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 800,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/aerial-view-business-team_11zon.jpg"),
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
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 420,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              StyledText(
                                text:
                                    "Core Values of <bold>Saptaloka Digital</bold>",
                                style: GoogleFonts.poppins(
                                  fontSize: 25,
                                  color: const Color(0xff013088),
                                ),
                                tags: {
                                  'bold': StyledTextTag(
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Text("' ALIVES '",
                                  style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 15,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 10
                                      ..color = const Color(0xff019CDE),
                                  )),
                              Text("' ALIVES '",
                                  style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 15,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const ItemCoreValues(
                          fontSize: 30,
                          fontSize2: 15,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Solutive",
                            deskripsi:
                                "Saptaloka Digital memberikan solusi untuk menyelesaikan permasalahan-permasalahan di bidang Digital.")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        width: MediaQuery.of(context).size.width,
        height: 600,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 600,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/aerial-view-business-team_11zon.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 600,
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
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              StyledText(
                                text:
                                    "Core Values of <bold>Saptaloka Digital</bold>",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xff013088),
                                ),
                                tags: {
                                  'bold': StyledTextTag(
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Text("'ALIVES'",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 10,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 10
                                      ..color = const Color(0xff019CDE),
                                  )),
                              Text("'ALIVES'",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 10,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ItemCoreValues(
                          fontSize: 20,
                          fontSize2: 10,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        const SizedBox(
                          height: 10,
                        ),
                        const ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        const SizedBox(
                          height: 10,
                        ),
                        const ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        const SizedBox(
                          height: 10,
                        ),
                        const ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        const SizedBox(
                          height: 10,
                        ),
                        const ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Solutive",
                            deskripsi:
                                "Saptaloka Digital memberikan solusi untuk menyelesaikan permasalahan-permasalahan di bidang Digital.")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCoreValues extends StatelessWidget {
  final String title;
  final String deskripsi;
  final double fontSize;
  final double fontSize2;
  const ItemCoreValues({
    Key? key,
    required this.title,
    required this.deskripsi,
    required this.fontSize,
    required this.fontSize2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 420,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.inter(
                        fontSize: fontSize,
                        color: const Color(0xff013088),
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(deskripsi,
                        maxLines: 5,
                        style: GoogleFonts.inter(
                          fontSize: fontSize2,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
