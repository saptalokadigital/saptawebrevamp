import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/news_admin/crud_news/add_news.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/news_admin/crud_news/edit_news.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NewsHome extends StatefulWidget {
  static const String id = "news-admin";
  const NewsHome({super.key});

  @override
  State<NewsHome> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewsAdd()));
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
                    .collection('NewsContent')
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
                              return NewsAdmin(
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class NewsAdmin extends StatefulWidget {
  final String id;
  const NewsAdmin({super.key, required this.id});

  @override
  State<NewsAdmin> createState() => _NewsAdminState();
}

class _NewsAdminState extends State<NewsAdmin> {
  String judul = '';
  String link = '';

  String? imageUrl;

  @override
  void initState() {
    getNewsData();
    super.initState();
  }

  Future<void> getNewsData() async {
    try {
      final DocumentSnapshot PengertianDIvisiDoc = await FirebaseFirestore
          .instance
          .collection('NewsContent')
          .doc(widget.id)
          .get();
      if (PengertianDIvisiDoc == null) {
        return;
      } else {
        setState(() {
          judul = PengertianDIvisiDoc.get('judul');
          link = PengertianDIvisiDoc.get('link');

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
                builder: (context) => NewsEdit(
                    judul: judul,
                    link: link,
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
                        link,
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
