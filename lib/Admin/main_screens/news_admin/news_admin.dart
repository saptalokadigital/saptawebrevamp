import 'package:flutter/material.dart';

class NewsAdmin extends StatefulWidget {
  static const String id = "news-admin";
  const NewsAdmin({super.key});

  @override
  State<NewsAdmin> createState() => _NewsAdminState();
}

class _NewsAdminState extends State<NewsAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("News"),
    );
  }
}
