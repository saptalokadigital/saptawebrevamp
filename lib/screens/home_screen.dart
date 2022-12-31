import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          color: Color(0xff013088),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: screenSize.width,
                  height: 558,
                  margin: const EdgeInsets.only(top: 142),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image_1.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Get Closer With',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 80,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      StyledText(
                        text: '<sapta>Saptaloka</sapta> <dig>Digital</dig>',
                        tags: {
                          'sapta': StyledTextTag(
                              style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 70,
                            color: Color(0xff019CDE),
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                                offset: Offset(0, 4.0),
                                color: Color.fromARGB(25, 0, 0, 0),
                              ),
                            ],
                          )),
                          'dig': StyledTextTag(
                              style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 70,
                            color: Color(0xff013088),
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                                offset: Offset(0, 4.0),
                                color: Color.fromARGB(25, 0, 0, 0),
                              ),
                            ],
                          )),
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 182,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    Color(0xff013088)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: Colors.white,
                              ),
                            )),
                          ),
                          child: const Text(
                            "Read More",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 226,
              height: 224.06,
              margin: const EdgeInsets.only(left: 79),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_banner.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
