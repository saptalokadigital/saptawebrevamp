import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class News {
  String image;
  String? judul;
  String? linkNews;

  News({required this.image, this.judul, this.linkNews});
}

List<News> images = [
  News(
      image:
          "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
      judul: "4 tantangan implementasi software ERP dan Solusi Mengatasinya",
      linkNews: "linkNews"),
  News(
      image:
          "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
      judul: "5 cakupan penerapan shared services dan contohnya",
      linkNews: "linkNews2"),
  News(
      image:
          "https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80",
      judul:
          "Hal-hal yang Perlu Diperhatikan saat Memilih Aplikasi E-Procurement",
      linkNews: "linkNews2"),
  News(
      image:
          "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80",
      judul:
          "Matangkan Perencanaan Transformasi Digital dengan Mengetahui IT Maturity Level",
      linkNews: "linkNews2"),
  News(
      image:
          "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
      judul:
          "Apa Perbedaan OverHead dan Biaya Operasional dalam Penerapan Shared Services?",
      linkNews: "linkNews2"),
  News(
      image:
          "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
      judul: "Fitur FORCA ERP untuk Kemudahan Mengelola Finansial Bisnis Anda",
      linkNews: "linkNews2"),
];

class LatestNews extends StatefulWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            autoPlay: true,
            aspectRatio: 2.0,
            viewportFraction: 0.2,
            padEnds: false,
          ),
          items: images
              .map((item) => Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                item.image!,
                                fit: BoxFit.cover,
                                width: 500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            item.judul!,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff013088)),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
