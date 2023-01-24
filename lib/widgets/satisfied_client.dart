import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:saptaloka_web_revamp/responsive.dart';

class SatisfiedClient extends StatefulWidget {
  const SatisfiedClient({super.key});

  @override
  State<SatisfiedClient> createState() => _SatisfiedClientState();
}

class _SatisfiedClientState extends State<SatisfiedClient> {
  CollectionReference ref =
      FirebaseFirestore.instance.collection('partner_saptaloka');

  List<Widget> itemCarousel = [
    Container(
      height: 30,
      width: 100,
      child: Image.asset(
        "assets/images/logo_banner.png",
        fit: BoxFit.cover,
      ),
    ),
    Container(
      height: 30,
      width: 100,
      child: Image.asset(
        "assets/images/logo_banner.png",
        fit: BoxFit.cover,
      ),
    ),
    Container(
      height: 30,
      width: 100,
      child: Image.asset(
        "assets/images/logo_banner.png",
        fit: BoxFit.cover,
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider.builder(
                  itemCount: snapshot.data!.docs.length,
                  options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(milliseconds: 3000),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String docId = snapshot.data!.docs[index].id;
                    String imageUrl = homeInfo['imageUrl'];

                    return Container(
                      height: 100,
                      width: 200,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
      desktop: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider.builder(
                  itemCount: snapshot.data!.docs.length,
                  options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(milliseconds: 3000),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String docId = snapshot.data!.docs[index].id;
                    String imageUrl = homeInfo['imageUrl'];

                    return Container(
                      height: 100,
                      width: 200,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
      tablet: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider.builder(
                  itemCount: snapshot.data!.docs.length,
                  options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(milliseconds: 3000),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 0.35,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String docId = snapshot.data!.docs[index].id;
                    String imageUrl = homeInfo['imageUrl'];

                    return Container(
                      height: 100,
                      width: 200,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
      mobile: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider.builder(
                  itemCount: snapshot.data!.docs.length,
                  options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(milliseconds: 3000),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: 0.35,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    var homeInfo = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
                    String docId = snapshot.data!.docs[index].id;
                    String imageUrl = homeInfo['imageUrl'];

                    return Container(
                      height: 100,
                      width: 200,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
