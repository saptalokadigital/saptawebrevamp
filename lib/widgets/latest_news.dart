import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:saptaloka_web_revamp/responsive.dart';
import 'package:go_router/go_router.dart';

class News {
  String image;
  String? judul;
  String? linkNews;

  News({required this.image, this.judul, this.linkNews});
}

class LatestNews extends StatefulWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('NewsContent')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 0.6,
                    viewportFraction: 1,
                    padEnds: false,
                  ),
                  items: snapshot.data!.docs
                      .map((item) => InkWell(
                            onTap: () {
                              context.go('/News/${item.get('id')}');
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.network(
                                          item.get('imageUrl'),
                                          fit: BoxFit.cover,
                                          width: 500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      item.get('judul'),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff013088)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
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
      tablet: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('NewsContent')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 1.5,
                    viewportFraction: 0.33,
                    padEnds: false,
                  ),
                  items: snapshot.data!.docs
                      .map((item) => InkWell(
                            onTap: () {
                              context.go('/News/${item.get('id')}');
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.network(
                                          item.get('imageUrl'),
                                          fit: BoxFit.cover,
                                          width: 500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      item.get('judul'),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff013088)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
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
      desktop: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('NewsContent')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 3,
                    viewportFraction: 0.2,
                    padEnds: false,
                  ),
                  items: snapshot.data!.docs
                      .map((item) => InkWell(
                            onTap: () {
                              context.go('/News/${item.get('id')}');
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.network(
                                          item.get('imageUrl'),
                                          fit: BoxFit.cover,
                                          width: 500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      item.get('judul'),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff013088)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
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
      large: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('NewsContent')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData || snapshot.data != null) {
                return CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 3,
                    viewportFraction: 0.2,
                    padEnds: false,
                  ),
                  items: snapshot.data!.docs
                      .map((item) => InkWell(
                            onTap: () {
                              context.go('/News/${item.get('id')}');
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.network(
                                          item.get('imageUrl'),
                                          fit: BoxFit.cover,
                                          width: 500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      item.get('judul'),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff013088)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
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
