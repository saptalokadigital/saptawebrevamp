import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/it_solution.dart';

class OurSolutionsCoba extends StatefulWidget {
  const OurSolutionsCoba({super.key});

  @override
  State<OurSolutionsCoba> createState() => _OurSolutionsState();
}

class _OurSolutionsState extends State<OurSolutionsCoba> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: CardSolution(
                      fct: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItSolutionScreen()));
                      },
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      desc:
                          'Layanan Pengelolaan proses bisnis berbasis digitalisasi yang bekerja secara terpusat melalui konsolidasi dan alih daya operasional bisnis perusahaan yang berisfat non-core dan transaksional',
                      link: '',
                    ),
                  ),
                  SizedBox(width: 30),
                  Flexible(
                    child: CardSolution(
                      fct: () {},
                      title: "Business Digital Solution",
                      image: "assets/images/image_1.png",
                      desc:
                          'Layanan ent-to-end untuk berbagai industri yang hadir dengan berbagai solusi meliputi software as a Services (SaaS), Digital Assessment, hingga E-Eommerce.',
                      link: '',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CardSolution(
                fct: () {},
                title: "Digital Marketing",
                image: "assets/images/image_1.png",
                desc:
                    'Layanan yang andal dan terpercaya untuk kebutuhan solusi IT terintegrasi, mulai daru consultancy, software development, hingga penyediaan hardware-software bagi perusahaan Anda',
                link: '',
              ),
            ),
          ],
        ),
      ),
      mobile: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            CardSolution(
              fct: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItSolutionScreen()));
              },
              title: "IT Solution",
              image: "assets/images/image_1.png",
              desc:
                  'Layanan Pengelolaan proses bisnis berbasis digitalisasi yang bekerja secara terpusat melalui konsolidasi dan alih daya operasional bisnis perusahaan yang berisfat non-core dan transaksional',
              link: '',
            ),
            CardSolution(
              fct: () {},
              title: "Business Digital Solution",
              image: "assets/images/image_1.png",
              desc:
                  'Layanan ent-to-end untuk berbagai industri yang hadir dengan berbagai solusi meliputi software as a Services (SaaS), Digital Assessment, hingga E-Eommerce.',
              link: '',
            ),
            CardSolution(
              fct: () {},
              title: "Digital Marketing",
              image: "assets/images/image_1.png",
              desc:
                  'Layanan yang andal dan terpercaya untuk kebutuhan solusi IT terintegrasi, mulai daru consultancy, software development, hingga penyediaan hardware-software bagi perusahaan Anda',
              link: '',
            ),
          ],
        ),
      ),
      large: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: CardSolution(
                      fct: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItSolutionScreen()));
                      },
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      desc:
                          'Layanan Pengelolaan proses bisnis berbasis digitalisasi yang bekerja secara terpusat melalui konsolidasi dan alih daya operasional bisnis perusahaan yang berisfat non-core dan transaksional',
                      link: '',
                    ),
                  ),
                  SizedBox(width: 30),
                  Flexible(
                    child: CardSolution(
                      fct: () {},
                      title: "Business Digital Solution",
                      image: "assets/images/image_1.png",
                      desc:
                          'Layanan ent-to-end untuk berbagai industri yang hadir dengan berbagai solusi meliputi software as a Services (SaaS), Digital Assessment, hingga E-Eommerce.',
                      link: '',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CardSolution(
                fct: () {},
                title: "Digital Marketing",
                image: "assets/images/image_1.png",
                desc:
                    'Layanan yang andal dan terpercaya untuk kebutuhan solusi IT terintegrasi, mulai daru consultancy, software development, hingga penyediaan hardware-software bagi perusahaan Anda',
                link: '',
              ),
            ),
          ],
        ),
      ),
      desktop: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: CardSolution(
                      fct: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItSolutionScreen()));
                      },
                      title: "IT Solution",
                      image: "assets/images/image_1.png",
                      desc:
                          'Layanan Pengelolaan proses bisnis berbasis digitalisasi yang bekerja secara terpusat melalui konsolidasi dan alih daya operasional bisnis perusahaan yang berisfat non-core dan transaksional',
                      link: '',
                    ),
                  ),
                  SizedBox(width: 30),
                  Flexible(
                    child: CardSolution(
                      fct: () {},
                      title: "Business Digital Solution",
                      image: "assets/images/image_1.png",
                      desc:
                          'Layanan ent-to-end untuk berbagai industri yang hadir dengan berbagai solusi meliputi software as a Services (SaaS), Digital Assessment, hingga E-Eommerce.',
                      link: '',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CardSolution(
                fct: () {},
                title: "Digital Marketing",
                image: "assets/images/image_1.png",
                desc:
                    'Layanan yang andal dan terpercaya untuk kebutuhan solusi IT terintegrasi, mulai daru consultancy, software development, hingga penyediaan hardware-software bagi perusahaan Anda',
                link: '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSolution extends StatefulWidget {
  final String title;
  final String image;
  final String desc;
  final String link;
  final Function fct;
  const CardSolution({
    super.key,
    required this.title,
    required this.image,
    required this.desc,
    required this.link,
    required this.fct,
  });

  @override
  State<CardSolution> createState() => _CardSolutionState();
}

class _CardSolutionState extends State<CardSolution> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      width: 530,
      child: Center(
        child: InkWell(
          onHover: (isHovering) {
            if (isHovering) {
              setState(() {
                scale = 1.05;
              });
            } else {
              setState(() {
                scale = 1;
              });
            }
          },
          onTap: () {
            Navigator.pushReplacementNamed(context, ItSolutionScreen.routeName);
          },
          child: AnimatedScale(
            scale: scale,
            duration: const Duration(milliseconds: 300),
            child: Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(2, 10),
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: GoogleFonts.inter(
                              fontSize: 30,
                              color: const Color(0xff013088),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.desc,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Color.fromARGB(255, 38, 40, 43),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
