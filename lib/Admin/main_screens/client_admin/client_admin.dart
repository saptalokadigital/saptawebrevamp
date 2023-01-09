import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/client_admin/crud_client/add_client.dart';
import 'package:saptaloka_web_revamp/Admin/main_screens/client_admin/crud_client/edit_client.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';

class ClientAdmin extends StatefulWidget {
  static const String id = "client-admin";
  const ClientAdmin({super.key});

  @override
  State<ClientAdmin> createState() => _ClientAdminState();
}

class _ClientAdminState extends State<ClientAdmin> {
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
                          MaterialPageRoute(builder: (context) => ClientAdd()));
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
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('partner_saptaloka')
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
                        mainAxisExtent: 150,
                        mainAxisSpacing: 65,
                      ),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (_, index) {
                        return ImgcontainerAdmin(
                          id: snapshot.data!.docs[index]['id'],
                        );
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text('Your Team is empty'),
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
    );
  }
}

class ImgcontainerAdmin extends StatefulWidget {
  final String id;
  const ImgcontainerAdmin({super.key, required this.id});

  @override
  State<ImgcontainerAdmin> createState() => _ImgcontainerAdminState();
}

class _ImgcontainerAdminState extends State<ImgcontainerAdmin> {
  String? imageUrl;

  @override
  void initState() {
    getTeamSaptalokaData();
    super.initState();
  }

  Future<void> getTeamSaptalokaData() async {
    try {
      final DocumentSnapshot partnerSaptalokaDoc = await FirebaseFirestore
          .instance
          .collection('partner_saptaloka')
          .doc(widget.id)
          .get();
      if (partnerSaptalokaDoc == null) {
        return;
      } else {
        setState(() {
          imageUrl = partnerSaptalokaDoc.get('imageUrl');
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
                builder: (context) => ClientEdit(
                    id: widget.id,
                    imageUrl: imageUrl == null
                        ? 'https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png'
                        : imageUrl!)));
      },
      child: Container(
        height: 30,
        width: 100,
        child: Image.network(
          imageUrl == null
              ? 'https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png'
              : imageUrl!,
          fit: BoxFit.fill,
        ),
      ),
    );
    ;
  }
}
