import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoreValues extends StatelessWidget {
  const CoreValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            Text("Core Values: AKHLAK",
                                style: GoogleFonts.poppins(
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
                        title: "Amanah",
                        deskripsi:
                            "Kami memengang teguh kepercayaan yang diberikan.",
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ItemCoreValues(
                          title: "Kompeten",
                          deskripsi:
                              "Kami terus belajar dan mengembangkan kapabilitas."),
                      SizedBox(
                        height: 25,
                      ),
                      ItemCoreValues(
                          title: "Harmonis",
                          deskripsi:
                              "Kami saling peduli dan menghargai perbedaan."),
                      SizedBox(
                        height: 25,
                      ),
                      ItemCoreValues(
                          title: "Loyal",
                          deskripsi:
                              "Kami berdedikasi dan mengutamakan kepentingan Bangsa dan Negara."),
                      SizedBox(
                        height: 25,
                      ),
                      ItemCoreValues(
                          title: "Adaptif",
                          deskripsi:
                              "Kami terus berinovasi dan antusias dalam menggerakkan ataupun menghadapi perubahan."),
                      SizedBox(
                        height: 25,
                      ),
                      ItemCoreValues(
                          title: "Kolaboratif",
                          deskripsi: "Kami membangun kerja sama yang sinergis.")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCoreValues extends StatelessWidget {
  final String title;
  final String deskripsi;
  const ItemCoreValues({
    Key? key,
    required this.title,
    required this.deskripsi,
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
                        fontSize: 30,
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
                        style: GoogleFonts.inter(
                          fontSize: 15,
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
