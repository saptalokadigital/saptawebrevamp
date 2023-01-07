import 'package:flutter/material.dart';

class PortfolioAdmin extends StatefulWidget {
  static const String id = "portfolio-admin";
  const PortfolioAdmin({super.key});

  @override
  State<PortfolioAdmin> createState() => _PortfolioAdminState();
}

class _PortfolioAdminState extends State<PortfolioAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Portfolio"),
    );
  }
}
