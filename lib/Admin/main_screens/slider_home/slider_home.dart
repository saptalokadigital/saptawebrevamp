import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/slider_home/crud_slider/add_slider.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/slider_home/crud_slider/edit_slider.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';

class SliderHome extends StatefulWidget {
  static const String id = "slider-home";
  const SliderHome({super.key});

  @override
  State<SliderHome> createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: screenSize.width,
        child: Column(
          children: [
            Container(
              width: screenSize.width,
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
                                builder: (context) => SliderAdd()));
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Tambah",
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
              height: 5,
            ),
            Text(
              "Klik konten untuk mengedit",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('SliderContent')
                      .orderBy('createdAt', descending: false)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.active) {
                      if (snapshot.data!.docs.isNotEmpty) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                return SliderAdmin(
                                    id: snapshot.data!.docs[index]['id']);
                              }),
                        );
                      } else {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text('is empty'),
                          ),
                        );
                      }
                    }
                    return const Center(
                      child: Text(
                        'Something went wrong',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class SliderAdmin extends StatefulWidget {
  final String id;
  const SliderAdmin({super.key, required this.id});

  @override
  State<SliderAdmin> createState() => _SliderAdminState();
}

class _SliderAdminState extends State<SliderAdmin> {
  String judul = '';
  String deskripsi = '';

  String? imageUrl;

  @override
  void initState() {
    getSliderData();
    super.initState();
  }

  Future<void> getSliderData() async {
    try {
      final DocumentSnapshot PengertianDIvisiDoc = await FirebaseFirestore
          .instance
          .collection('SliderContent')
          .doc(widget.id)
          .get();
      if (PengertianDIvisiDoc == null) {
        return;
      } else {
        setState(() {
          judul = PengertianDIvisiDoc.get('judul');
          deskripsi = PengertianDIvisiDoc.get('deskripsi');

          imageUrl = PengertianDIvisiDoc.get('imageUrl');
        });
      }
    } catch (error) {
      GlobalMethods.errorDialog(subtitle: '$error', context: context);
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SliderEdit(
                    judul: judul,
                    deskripsi: deskripsi,
                    imageUrl: imageUrl == null
                        ? 'https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png'
                        : imageUrl!,
                    id: widget.id)));
      },
      child: Column(
        children: [
          AnimatedContainer(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 500),
            transform: Matrix4.translationValues(0, 1, 0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 500,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        judul,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                          color: Color(0xff013088),
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                        ),
                      )
                          .animate()
                          .slideY(delay: 1000.ms)
                          .fade(duration: 1000.ms),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        deskripsi,
                        maxLines: 10,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      )
                          .animate()
                          .slideY(delay: 1000.ms)
                          .fade(duration: 1000.ms),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  width: 500,
                  height: 400,
                  child: Image.network(imageUrl == null
                      ? 'https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png'
                      : imageUrl!),
                ).animate().slideX(delay: 1500.ms).fade(duration: 1500.ms),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.black,
            height: 5,
          )
        ],
      ),
    );
  }
}
