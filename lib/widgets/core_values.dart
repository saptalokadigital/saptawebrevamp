import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

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
                              Text("Core Values: ALIVES",
                                  style: GoogleFonts.inter(
                                    fontSize: 25,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                          fontSize: 30,
                          fontSize2: 15,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
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
                              Text("Core Values: ALIVES",
                                  style: GoogleFonts.inter(
                                    fontSize: 25,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                          fontSize: 30,
                          fontSize2: 15,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
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
                              Text("Core Values: ALIVES",
                                  style: GoogleFonts.inter(
                                    fontSize: 25,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                          fontSize: 30,
                          fontSize2: 15,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 30,
                            fontSize2: 15,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
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
                      image: AssetImage("assets/images/image_1.png"),
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
                              Text("Core Values: ALIVES",
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff013088),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                          fontSize: 20,
                          fontSize2: 10,
                          title: "Amanah",
                          deskripsi:
                              "Saptaloka Digital memengang teguh kepercayaan yang diberikan.",
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Loyal",
                            deskripsi:
                                "Saptaloka Digital berdedikasi untuk mendigitalisasikan perusahaan yang ada di seluruh Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Innovative",
                            deskripsi:
                                "Saptaloka Digital terus berinovasi mengembangkan produk IT dalam memajukan teknologi di Indonesia."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Visioner",
                            deskripsi:
                                "Saptaloka Digital menciptakan produk IT yang baru untuk era 5.0 mendatang."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
                            fontSize: 20,
                            fontSize2: 10,
                            title: "Enthusiastic",
                            deskripsi:
                                "Saptaloka Digital antusias dalam menggerakkan ataupun menghadapi perubahan teknologi."),
                        SizedBox(
                          height: 25,
                        ),
                        ItemCoreValues(
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
                        color: Color(0xff013088),
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
                        maxLines: 3,
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
