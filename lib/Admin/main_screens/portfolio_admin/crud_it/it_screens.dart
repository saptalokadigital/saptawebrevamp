import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/portfolio_admin/crud_it/add_portfolio_it.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/portfolio_admin/crud_it/edit_portfolio_it.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';

class PortfolioItScreens extends StatefulWidget {
  const PortfolioItScreens({super.key});

  @override
  State<PortfolioItScreens> createState() => _PortfolioItScreensState();
}

class _PortfolioItScreensState extends State<PortfolioItScreens> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 50,
              color: Colors.black,
            )),
        title: Text("Portfolio IT",
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue))),
      ),
      body: Container(
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
                                builder: (context) => PortfolioItAdd()));
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
            SizedBox(height: 30),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('PortfolioIt')
                  .orderBy('createdAt', descending: false)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.data!.docs.isNotEmpty) {
                    return Container(
                      child: GridView.builder(
                        padding: EdgeInsets.only(),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (_, index) {
                          return CardPortfolioIt(
                            id: snapshot.data!.docs[index]['id'],
                          );
                        },
                      ),
                    );
                  } else {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text('Your Portfolio is empty'),
                      ),
                    );
                  }
                }
                return const Center(
                  child: Text(
                    'Something went wrong',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CardPortfolioIt extends StatefulWidget {
  final String id;
  const CardPortfolioIt({super.key, required this.id});

  @override
  State<CardPortfolioIt> createState() => _CardPortfolioItState();
}

class _CardPortfolioItState extends State<CardPortfolioIt> {
  String title = '';
  String deskripsi = '';
  String category = '';

  String? imageUrl;
  String? imageUrl2;

  @override
  void initState() {
    getPortfolioData();
    super.initState();
  }

  Future<void> getPortfolioData() async {
    try {
      final DocumentSnapshot PortfolioData = await FirebaseFirestore.instance
          .collection('PortfolioIt')
          .doc(widget.id)
          .get();
      if (PortfolioData == null) {
        return;
      } else {
        setState(() {
          title = PortfolioData.get('title');
          deskripsi = PortfolioData.get('deskripsi');
          category = PortfolioData.get('category');
          imageUrl = PortfolioData.get('imageUrl');
          imageUrl2 = PortfolioData.get('imageUrl2');
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
                builder: (context) => PortfolioItEdit(
                    title: title,
                    deskripsi: deskripsi,
                    imageUrl: imageUrl == null
                        ? 'https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png'
                        : imageUrl!,
                    id: widget.id,
                    imageUrl2: imageUrl2 == null
                        ? 'https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png'
                        : imageUrl2!,
                    category: category == null ? "pilih kategory" : category)));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(imageUrl == null
                          ? 'https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png'
                          : imageUrl!),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color(0xff013088),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
