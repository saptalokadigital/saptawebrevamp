import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

class OurTeam extends StatefulWidget {
  const OurTeam({super.key});

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  List<String> stafName = [
    "Lorem Ipsum",
    "Lorem Ipsum",
    "Lorem Ipsum",
  ];
  List<String> stafJabatan = [
    "Staf",
    "Staf",
    "Staf",
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
      child: Container(
        width: screenSize.width,
        child: Column(
          children: [
            Text(
              "Our Team",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 35.0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamItem(
                    nama: "Lorem Ipsum",
                    jabatan: "CEO",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TeamItem(nama: "Lorem Ipsum", jabatan: "Head Of IT"),
                  TeamItem(nama: "Lorem Ipsum", jabatan: "Head Of Desain"),
                  TeamItem(nama: "Lorem Ipsum", jabatan: "Head Of Marketing"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TeamItem(nama: "Lorem Ipsum", jabatan: "Leader IT"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                    // banyak grid yang ditampilkan dalam satu baris
                    crossAxisCount: 3),
                itemCount: stafName.length,
                itemBuilder: (_, index) {
                  return TeamItem(
                    nama: stafName[index],
                    jabatan: stafJabatan[index],
                  );
                })
          ],
        ),
      ),
    );
  }
}

class TeamItem extends StatefulWidget {
  final String nama;
  final String jabatan;
  const TeamItem({
    Key? key,
    required this.nama,
    required this.jabatan,
  }) : super(key: key);

  @override
  State<TeamItem> createState() => _TeamItemState();
}

class _TeamItemState extends State<TeamItem> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
        child: Container(
          width: 300,
          child: Stack(
            children: [
              Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/image_1.png'),
                      radius: 120,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.nama,
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff013088),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(widget.jabatan,
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        hoverChild: Container(
          width: 300,
          child: Stack(
            children: [
              Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_1.png'),
                          radius: 120,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff013088).withOpacity(0.7),
                          radius: 120,
                          child: Center(
                            child: Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Center(
                                child: Text("LIHAT DETAIL",
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.nama,
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff013088),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(widget.jabatan,
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        onHover: (e) {});
  }
}
