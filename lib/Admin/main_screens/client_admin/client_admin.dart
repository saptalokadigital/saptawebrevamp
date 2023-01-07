import 'package:flutter/material.dart';

class ClientAdmin extends StatefulWidget {
  static const String id = "client-admin";
  const ClientAdmin({super.key});

  @override
  State<ClientAdmin> createState() => _ClientAdminState();
}

class _ClientAdminState extends State<ClientAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Client"),
    );
  }
}
