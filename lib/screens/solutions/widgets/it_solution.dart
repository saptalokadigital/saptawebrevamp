import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:saptaloka_web_revamp/screens/about_us/widget/card_solution.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';

class ItSolutionScreen extends StatefulWidget {
  static const routeName = '/Solutions/ITSolution';
  const ItSolutionScreen({super.key});

  @override
  State<ItSolutionScreen> createState() => _ItSolutionScreenState();
}

class _ItSolutionScreenState extends State<ItSolutionScreen> {
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
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: HeaderWidget(),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Header Nya
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/image_1.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 505,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.center,
                              colors: [Colors.transparent, Color(0xFFFFFFFF)])),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 75, left: 100),
                      width: MediaQuery.of(context).size.width / 2,
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IT Solution',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              color: Color(0xff013088),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Sistem yang telah dikembangkan melalui teknologi digital membuat sebuah perusaahan dapat bergerak lebih maju menjadi yang terbaik hehehe',
                            style: GoogleFonts.inter(
                              fontSize: 25,
                              color: Color.fromARGB(255, 58, 60, 63),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(
                    "Software Services",
                    style: GoogleFonts.inter(
                      color: const Color(0xff013088),
                      textStyle: const TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),

              // Card Dan Hover Nya
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 1050,
                child: GridView.builder(
                    padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 35,
                      crossAxisSpacing: 35,
                      childAspectRatio: 9 / 16,
                    ),
                    itemCount: 8,
                    itemBuilder: (BuildContext ctx, index) {
                      return CardSolutionLong();
                    }),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Digital Assessment",
                      style: GoogleFonts.inter(
                        color: const Color(0xff013088),
                        textStyle: const TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              // Isi Digital Assesement
              Container(
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
                                  padding:
                                      const EdgeInsets.fromLTRB(350, 170, 0, 0),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 500,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.verified_rounded,
                                                    color: Colors.blue,
                                                    size: 28),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "IT Governance Recommendation",
                                                  style: GoogleFonts.inter(
                                                    height: 1.5,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xff013088),
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
                                                  const EdgeInsets.fromLTRB(
                                                      40, 5, 0, 0),
                                              child: Text(
                                                "Tingkatkan level maturity IT perusahaan dengan rekomendasi berdasarkan area of improvement dan high level strategy yang sesuai dengan bisnis Anda.",
                                                style: GoogleFonts.inter(
                                                  height: 1.7,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff013088),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 500,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.verified_rounded,
                                                    color: Colors.blue,
                                                    size: 28),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "IT Governance Checklist",
                                                  style: GoogleFonts.inter(
                                                    height: 1.5,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xff013088),
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
                                                  const EdgeInsets.fromLTRB(
                                                      40, 5, 0, 0),
                                              child: Text(
                                                "Wujudkan tata kelola IT yang baik dengan penerapan standarisasi yang lengkap dan menyeluruh, serta sesuai dengan prinsip dan kebijakan tata kelola IT BUMN.",
                                                style: GoogleFonts.inter(
                                                  height: 1.7,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff013088),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.verified_rounded,
                                                    color: Colors.blue,
                                                    size: 28),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "IT Maturity Score",
                                                  style: GoogleFonts.inter(
                                                    height: 1.5,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xff013088),
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
                                                  const EdgeInsets.fromLTRB(
                                                      40, 5, 0, 0),
                                              child: Text(
                                                "Dapatkan benchmark dan nilai maturity level IT yang objektif melalui framework pengukuran yang sesuai standar dan best practice industri dunia.",
                                                style: GoogleFonts.inter(
                                                  height: 1.7,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff013088),
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
              ),
              const SizedBox(
                height: 50,
              ),

              // E-Commerce
              Container(
                // decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Text(
                      "E-Commerce",
                      style: GoogleFonts.inter(
                        color: const Color(0xff013088),
                        textStyle: const TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
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
                                      image: AssetImage(
                                          'assets/images/sobatbangun.png'))),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                                  color:
                                                      const Color(0xff013088),
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
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 5, 0, 0),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 700,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                                  color:
                                                      const Color(0xff013088),
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
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 5, 0, 0),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                                  color:
                                                      const Color(0xff013088),
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
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 5, 0, 0),
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
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.center,
                                          colors: _isHovering[0]
                                              ? [
                                                  Color.fromARGB(
                                                      255, 58, 114, 220),
                                                  const Color(0xff013088),
                                                ]
                                              : [
                                                  const Color(0xff019CDE),
                                                  Color.fromARGB(
                                                          255, 138, 168, 224)
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
              ),
              SizedBox(
                height: 20,
              ),

              // Footer
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
