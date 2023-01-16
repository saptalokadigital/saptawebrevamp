import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/footer/edit_footer.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';

class FooterAdminScreens extends StatefulWidget {
  static const String id = "footer-admin";
  const FooterAdminScreens({super.key});

  @override
  State<FooterAdminScreens> createState() => _FooterAdminScreensState();
}

class _FooterAdminScreensState extends State<FooterAdminScreens> {
  String alamat = "";
  String email = "";
  String fb = "";
  String ig = "";
  String linked = "";
  String yt = "";
  String phone = "";
  String id = "";
  String alamat2 = "";
  @override
  void initState() {
    getFooterData();
    super.initState();
  }

  Future<void> getFooterData() async {
    try {
      final DocumentSnapshot FooterSapta = await FirebaseFirestore.instance
          .collection('Footer')
          .doc('satu')
          .get();
      if (FooterSapta == null) {
        return;
      } else {
        setState(() {
          id = FooterSapta.get('id');
          alamat = FooterSapta.get('alamat');
          email = FooterSapta.get('email');
          phone = FooterSapta.get('phone');
          fb = FooterSapta.get('fb');
          ig = FooterSapta.get('ig');
          yt = FooterSapta.get('yt');
          linked = FooterSapta.get('linked');
          alamat2 = FooterSapta.get('alamat2');
        });
      }
    } catch (error) {
      GlobalMethods.errorDialog(subtitle: '$error', context: context);
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    var screensSize = MediaQuery.of(context).size;
    bool _isHover = false;
    return Container(
        width: screensSize.width,
        child: Column(
          children: [
            Container(
              width: screensSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 50),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FooterEdit(
                                    id: id,
                                    alamat: alamat,
                                    alamat2: alamat2,
                                    phone: phone,
                                    email: email,
                                    igLink: ig,
                                    fbLink: fb,
                                    ytLink: yt)));
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
            SizedBox(
              height: 30,
            ),
            Footer()
          ],
        ));
  }
}
