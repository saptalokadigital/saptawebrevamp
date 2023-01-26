import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DigitalAssesment extends StatefulWidget {
  const DigitalAssesment({super.key});

  @override
  State<DigitalAssesment> createState() => _DigitalAssesmentState();
}

class _DigitalAssesmentState extends State<DigitalAssesment> {
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
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
        child: Row(
          children: [
            Container(
              // decoration: BoxDecoration(color: Colors.blue),
              width: MediaQuery.of(context).size.width / 2,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      height: 600,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/fotojaringan.png'))),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(350, 170, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/logonetflix.png'))),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/logonetflix.png'))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.yellow),
              width: MediaQuery.of(context).size.width / 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tulisan Atas
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 400,
                            child: Text(
                              "Advancing business through maturity of IT operation",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 500,
                            child: Text(
                              "Digital Assessment hadir sebagai layanan untuk mengukur, merancang, dan meningkatkan tata kelola IT perusahaan yang selaras dengan strategi bisnis Anda.",
                              style: GoogleFonts.inter(
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff013088),
                                textStyle: const TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    // Centang Dan Teks
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 500,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.verified_rounded,
                                          color: Colors.blue, size: 28),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "IT Governance Recommendation",
                                        style: GoogleFonts.inter(
                                          height: 1.5,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 28.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(40, 5, 0, 0),
                                    child: Text(
                                      "Tingkatkan level maturity IT perusahaan dengan rekomendasi berdasarkan area of improvement dan high level strategy yang sesuai dengan bisnis Anda.",
                                      style: GoogleFonts.inter(
                                        height: 1.7,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff013088),
                                        textStyle: const TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 500,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.verified_rounded,
                                          color: Colors.blue, size: 28),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "IT Governance Checklist",
                                        style: GoogleFonts.inter(
                                          height: 1.5,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 28.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(40, 5, 0, 0),
                                    child: Text(
                                      "Wujudkan tata kelola IT yang baik dengan penerapan standarisasi yang lengkap dan menyeluruh, serta sesuai dengan prinsip dan kebijakan tata kelola IT BUMN.",
                                      style: GoogleFonts.inter(
                                        height: 1.7,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff013088),
                                        textStyle: const TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 500,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.verified_rounded,
                                          color: Colors.blue, size: 28),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "IT Maturity Score",
                                        style: GoogleFonts.inter(
                                          height: 1.5,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 28.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 500,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(40, 5, 0, 0),
                                    child: Text(
                                      "Dapatkan benchmark dan nilai maturity level IT yang objektif melalui framework pengukuran yang sesuai standar dan best practice industri dunia.",
                                      style: GoogleFonts.inter(
                                        height: 1.7,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff013088),
                                        textStyle: const TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    // Button Request Now
                    InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                            colors: _isHovering[0]
                                ? [
                                    Color.fromARGB(255, 58, 114, 220),
                                    const Color(0xff013088),
                                  ]
                                : [
                                    const Color(0xff019CDE),
                                    Color.fromARGB(255, 138, 168, 224)
                                        .withOpacity(0.8),
                                  ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Request Now!",
                            style: GoogleFonts.inter(
                              height: 1.5,
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 600,
                      child: Text(
                        "SISI bersama FORTI BUMN mendukung penuh upaya peningkatan IT Maturity di BUMN.",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: const Color(0xff013088),
                            fontSize: 25.0,
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
    );
  }
}
