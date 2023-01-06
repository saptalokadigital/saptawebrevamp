import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff019CDE),
            Color(0xff013088),
          ])),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "About Us",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('Stories'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Press Release'),
                              Text('Media Coverage'),
                              Text('life at SISI'),
                              Text('Insight')
                            ]),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Solutions",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('Shared Services'),
                              Text('Digital Solution'),
                              Text('System Integrator'),
                            ]),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Legal",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('FORCA ERP Terms & Conditions'),
                              Text('FORCA ERP Privacy'),
                              Text('Policy'),
                              Text('Kebijakan'),
                              Text('Perusahaan'),
                              Text('Whistle Blowing'),
                              Text('System (WBS)'),
                            ]),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PT SINERGI INFORMATIKA SEMEN INDONESIA",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Graha Aktiva, 11th Floor,'),
                      Text(
                          'Jl. H.R. Rasuna Said, Kav 3, South Jakarta, 12950 -'),
                      Text('Indonesia'),
                      Text('P: +62 21 2941 0371'),
                      Text('E. ptsisi@sisi.sig.id'),
                      Text(
                          'E. pr.sisi@sisi.sig.id (Media & External Invitation'),
                      SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                        onPressed: (() {}),
                        child: Text(
                          'CONTACT US',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(color: Colors.white)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              size: 20,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white)),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              FontAwesomeIcons.instagram,
                              size: 20,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white)),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              FontAwesomeIcons.linkedinIn,
                              size: 20,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white)),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              FontAwesomeIcons.youtube,
                              size: 20,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}