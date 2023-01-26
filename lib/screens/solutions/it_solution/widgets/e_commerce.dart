import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ECommerce extends StatefulWidget {
  const ECommerce({super.key});

  @override
  State<ECommerce> createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(800, 0, 0, 0),
              child: Container(
                height: 800,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'assets/images/laptoptaransparent.png'))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage('assets/images/sobatbangun.png'))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "SobatBangun adalah platform digital yang bergerak dengan misi mengembangkan proses pembangunan dan renovasi rumah secara lebih baik serta berkelanjutan.",
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.verified_rounded,
                                        color: Colors.blue, size: 28),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Rekanan Yang Terpercaya",
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
                                width: 700,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 5, 0, 0),
                                  child: Text(
                                    "SobatBangun bekerja sama dengan Arsitek berkualitas dan kontraktor berpengalaman yang terpercaya.",
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
                                width: 700,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.verified_rounded,
                                        color: Colors.blue, size: 28),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Proses Pembangunan Aman & Transparan",
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
                                width: 700,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 5, 0, 0),
                                  child: Text(
                                    "Membangun rumah tanpa kuatir menjadi korban pelarian dana atau kualitas meragukan. Semua proses pembangunan transparan dan pengucuran dana berdasarkan veriﬁkasi hasil kerja.",
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.verified_rounded,
                                        color: Colors.blue, size: 28),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Pendampingan Sobat Konsul",
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
                                width: 700,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 5, 0, 0),
                                  child: Text(
                                    "Sobat Konsul akan selalu siap memberikan panduan dan bantuan mulai dari konsultasi desain dengan arsitek, pembahasan RAB dengan kontraktor, hingga proses konstruksi.",
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
                            width: 180,
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
                                "SELENGKAPNYA",
                                style: GoogleFonts.inter(
                                  height: 1.5,
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
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
          )
        ],
      ),
    );
  }
}
