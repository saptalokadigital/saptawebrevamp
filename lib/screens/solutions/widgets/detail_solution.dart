import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/router_const.dart';
import 'package:saptaloka_web_revamp/screens/about_us/about_us_screens.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/solutions_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/it_solution/screens/it_solution.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';
import 'package:saptaloka_web_revamp/widgets/header_widget.dart';
import 'package:go_router/go_router.dart';

class DetailSolutionScreen extends StatefulWidget {
  const DetailSolutionScreen({super.key});

  @override
  State<DetailSolutionScreen> createState() => _DetailSolutionScreenState();
}

class _DetailSolutionScreenState extends State<DetailSolutionScreen> {
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
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 70),
            child: Container(
              alignment: Alignment.topCenter,
              width: screenSize.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        context.go('/');
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo_header.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Flexible(
                      child: Stack(
                        children: [
                          TextButton(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[0] = true
                                    : _isHovering[0] = false;
                              });
                            },
                            onPressed: () {
                              context.go(aboutUsRoute);
                            },
                            child: Text(
                              'About Us',
                              style: GoogleFonts.inter(
                                color: _isHovering[0]
                                    ? const Color(0xff013088)
                                    : const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 33,
                    ),
                    _isHovering[1]
                        ? InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[1] = true
                                    : _isHovering[1] = false;
                              });
                            },
                            onTap: () {
                              context.go(solutionsRoute);
                            },
                            child: Container(
                              width: 95,
                              child: Row(
                                children: [
                                  Text(
                                    'Solutions',
                                    style: GoogleFonts.inter(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.transparent,
                                  )
                                ],
                              ),
                            ),
                          )
                        : InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[1] = true
                                    : _isHovering[1] = false;
                              });
                            },
                            onTap: () {
                              context.go(solutionsRoute);
                            },
                            child: Container(
                              width: 95,
                              child: Row(
                                children: [
                                  Text(
                                    'Solutions',
                                    style: GoogleFonts.inter(
                                      color: _isHovering[1]
                                          ? const Color(0xff013088)
                                          : const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: _isHovering[1]
                                        ? const Color(0xff013088)
                                        : const Color.fromARGB(255, 0, 0, 0),
                                  )
                                ],
                              ),
                            ),
                          ),
                    SizedBox(width: 22),
                    Flexible(
                      child: TextButton(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onPressed: () {
                          context.go(contactUsRoute);
                        },
                        child: Text(
                          'Contact Us',
                          style: GoogleFonts.inter(
                            color: _isHovering[2]
                                ? const Color(0xff013088)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
              child: Container(
            child: Column(
              children: [
                // Untuk Menu Teratas
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/image_1.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.center,
                                colors: [
                              Colors.transparent,
                              Color(0xFFFFFFFF)
                            ])),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 35, left: 100),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/FORCA_PoS-Logo-Horizontal-RGB-Full_Color_Black.png'))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 450,
                              child: Text(
                                'Optimalkan Proses Transaksi Harian Bisnis',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60,
                                  color: Color(0xff013088),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'FORCA PoS adalah aplikasi point-of-sale berbasis web dan mobile yang digunakan untuk mempermudah pencatatan dalam transaksi penjualan & pembelian, sehingga dapat meningkatkan efisiensi dan kinerja perusahaan.',
                              style: GoogleFonts.inter(
                                height: 1.8,
                                fontSize: 15,
                                color: Color.fromARGB(255, 58, 60, 63),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[0] = true
                                        : _isHovering[0] = false;
                                  });
                                },
                                child: Container(
                                  width: 220,
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
                                      "JADWALKAN DEMO",
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 100, 0, 100),
                    child: Center(
                      child: Text(
                        "FORCA CRM memiliki 4 fitur utama yang telah disempurnakan",
                        style: GoogleFonts.inter(
                          color: const Color(0xff013088),
                          textStyle: const TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Gabungan Widget Fitur Dan Bawahan Nya
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      // 4 Fitur Utama

                      // Fitur 1
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            // Gambar Dan Stack Logo Bulat
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(175, 0, 0, 100),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 250,
                                      width: 400,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  'assets/images/image_1.png'))),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            350, 75, 0, 0),
                                        child: Container(
                                          height: 105,
                                          width: 105,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 15,
                                              ),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'assets/images/fotojaringan.png'))),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Produk Management",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 550,
                                      child: Text(
                                        "Berfungsi untuk melihat daftar produk, menambah produk baru, dan memberikan aturan tentang harga, kedaluwarsa, serta penyesuaian stok produk.",
                                        style: GoogleFonts.inter(
                                          height: 1.5,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 17.0,
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
                      const SizedBox(
                        height: 100,
                      ),
                      // Fitur 2
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            // Gambar Dan Stack Logo Bulat

                            Container(
                              height: 205,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 75),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Produk Management",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 550,
                                      child: Text(
                                        textAlign: TextAlign.right,
                                        "Berfungsi untuk melihat daftar produk, menambah produk baru, dan memberikan aturan tentang harga, kedaluwarsa, serta penyesuaian stok produk.",
                                        style: GoogleFonts.inter(
                                          height: 1.5,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(75, 0, 0, 100),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          50, 0, 0, 0),
                                      child: Container(
                                        height: 250,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/images/image_1.png'))),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 75, 0, 0),
                                        child: Container(
                                          height: 105,
                                          width: 105,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 15,
                                              ),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'assets/images/fotojaringan.png'))),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 100,
                      ),
                      // Fitur 3
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            // Gambar Dan Stack Logo Bulat
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(175, 0, 0, 100),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 250,
                                      width: 400,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  'assets/images/image_1.png'))),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            350, 75, 0, 0),
                                        child: Container(
                                          height: 105,
                                          width: 105,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 15,
                                              ),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'assets/images/fotojaringan.png'))),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Produk Management",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 550,
                                      child: Text(
                                        "Berfungsi untuk melihat daftar produk, menambah produk baru, dan memberikan aturan tentang harga, kedaluwarsa, serta penyesuaian stok produk.",
                                        style: GoogleFonts.inter(
                                          height: 1.5,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 17.0,
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
                      const SizedBox(
                        height: 100,
                      ),
                      // Fitur 4
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            // Gambar Dan Stack Logo Bulat

                            Container(
                              height: 205,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 75),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Produk Management",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 550,
                                      child: Text(
                                        textAlign: TextAlign.right,
                                        "Berfungsi untuk melihat daftar produk, menambah produk baru, dan memberikan aturan tentang harga, kedaluwarsa, serta penyesuaian stok produk.",
                                        style: GoogleFonts.inter(
                                          height: 1.5,
                                          color: const Color(0xff013088),
                                          textStyle: const TextStyle(
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(75, 0, 0, 100),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          50, 0, 0, 0),
                                      child: Container(
                                        height: 250,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/images/image_1.png'))),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 75, 0, 0),
                                        child: Container(
                                          height: 105,
                                          width: 105,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 15,
                                              ),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'assets/images/fotojaringan.png'))),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 100,
                      ),
                      // Gambar Kalkulator Dan Penjelasan
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Container(
                                width: 350,
                                height: 350,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/kalkulator.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Column(
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Our Competitive Advantages",
                                            style: GoogleFonts.inter(
                                              height: 1.5,
                                              color: const Color(0xff013088),
                                              textStyle: const TextStyle(
                                                fontSize: 25.0,
                                              ),
                                            ),
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
                                                      "Compatible Android",
                                                      style: GoogleFonts.inter(
                                                        height: 1.5,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: const Color(
                                                            0xff013088),
                                                        textStyle:
                                                            const TextStyle(
                                                          fontSize: 25.0,
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
                                                    "FORCA PoS dapat digunakan dan telah sesuai dengan sistem Android dengan versi paling sederhana.",
                                                    style: GoogleFonts.inter(
                                                      height: 1.7,
                                                      color: const Color(
                                                          0xff013088),
                                                      textStyle:
                                                          const TextStyle(
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
                                                      "Mudah & Praktis",
                                                      style: GoogleFonts.inter(
                                                        height: 1.5,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: const Color(
                                                            0xff013088),
                                                        textStyle:
                                                            const TextStyle(
                                                          fontSize: 25.0,
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
                                                    "Akses dan kelola informasi mulai inventori hingga promosi secara real time dan hubungkan aplikasi ke perangkat keras lainnya dengan mudah.",
                                                    style: GoogleFonts.inter(
                                                      height: 1.7,
                                                      color: const Color(
                                                          0xff013088),
                                                      textStyle:
                                                          const TextStyle(
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
                                      ],
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

                // Boost Your Bussiness
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 100, 100, 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Boost your business performance now!",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff013088),
                            textStyle: const TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          "Jadwalkan demo dan konsultasikan kebutuhan bisnis Anda dengan tim kami.",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            textStyle: const TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        InkWell(
                          onTap: () {
                            context.go(contactUsRoute);
                          },
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[0] = true
                                  : _isHovering[0] = false;
                            });
                          },
                          child: Container(
                            width: 175,
                            height: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.20),
                                  offset: const Offset(
                                    2.0,
                                    2.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 5.0,
                                ),
                              ],
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
                                        const Color(0xff019CDE),
                                      ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "CONTACT US",
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
                ),
                // Footer
                Footer(),
              ],
            ),
          )),
        ),
        _isHovering[1]
            ? Padding(
                padding: const EdgeInsets.only(left: 283, right: 100, top: 23),
                child: Container(
                  width: 230,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onPressed: () {
                      context.go(solutionsRoute);
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Solutions',
                                  style: GoogleFonts.inter(
                                    color: _isHovering[1]
                                        ? const Color(0xff013088)
                                        : const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: _isHovering[1]
                                      ? const Color(0xff013088)
                                      : const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 3,
                                  decoration: BoxDecoration(color: Colors.blue),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 15, bottom: 15),
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
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  context.go(itSolutionsRoute);
                                                },
                                                child: Text(
                                                  'IT Solution',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  context.go(solutionsRoute);
                                                },
                                                child: Text(
                                                  'Business Digital Solution',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onHover: (value) {
                                                  setState(() {
                                                    value
                                                        ? _isHovering[1] = true
                                                        : _isHovering[1] =
                                                            false;
                                                  });
                                                },
                                                onPressed: () {
                                                  context.go(solutionsRoute);
                                                },
                                                child: Text(
                                                  'Digital Marketing',
                                                  style: GoogleFonts.inter(
                                                    color: _isHovering[1]
                                                        ? const Color(
                                                            0xff013088)
                                                        : const Color.fromARGB(
                                                            255, 0, 0, 0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
