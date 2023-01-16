import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase/firebase.dart' as fb;
import 'package:image_picker/image_picker.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';

class FooterEdit extends StatefulWidget {
  final String id, alamat, alamat2, phone, email, igLink, fbLink, ytLink;
  const FooterEdit(
      {super.key,
      required this.id,
      required this.alamat,
      required this.phone,
      required this.email,
      required this.igLink,
      required this.fbLink,
      required this.ytLink,
      required this.alamat2});

  @override
  State<FooterEdit> createState() => _FooterEditState();
}

class _FooterEditState extends State<FooterEdit> {
  final _formKey = GlobalKey<FormState>();

  bool _isLoading = false;

  late final TextEditingController alamatController,
      alamat2Controller,
      phoneController,
      emailController,
      igLinkController,
      fbLinkController,
      ytLinkController;

  @override
  void initState() {
    phoneController = TextEditingController(text: widget.phone);
    emailController = TextEditingController(text: widget.email);
    alamatController = TextEditingController(text: widget.alamat);
    alamat2Controller = TextEditingController(text: widget.alamat2);
    igLinkController = TextEditingController(text: widget.igLink);
    fbLinkController = TextEditingController(text: widget.fbLink);

    ytLinkController = TextEditingController(text: widget.ytLink);

    super.initState();
  }

  @override
  void dispose() {
    alamatController.dispose();
    alamat2Controller.dispose();
    emailController.dispose();
    phoneController.dispose();
    igLinkController.dispose();
    fbLinkController.dispose();
    ytLinkController.dispose();

    super.dispose();
  }

  void _editFooter() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();

      try {
        setState(() {
          _isLoading = true;
        });

        await FirebaseFirestore.instance
            .collection('Footer')
            .doc('satu')
            .update({
          'alamat': alamatController.text,
          'alamat2': alamat2Controller.text,
          'email': emailController.text,
          'phone': phoneController.text,
          'ig': igLinkController.text,
          'fb': fbLinkController.text,
          'yt': ytLinkController.text,
        });
        await Fluttertoast.showToast(
          msg: "Product has been updated",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
        );
      } on FirebaseException catch (error) {
        GlobalMethods.errorDialog(
            subtitle: '${error.message}', context: context);
        setState(() {
          _isLoading = false;
        });
      } catch (error) {
        GlobalMethods.errorDialog(subtitle: '$error', context: context);
        setState(() {
          _isLoading = false;
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              onTap: () {
                _editFooter();
              },
              child: Container(
                height: 15,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Edit",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: alamatController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan Alamat",
                        labelText: "Alamat",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: alamat2Controller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan Alamat2",
                        labelText: "Alamat2",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan email",
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan no telepon",
                        labelText: "No Telepon",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: igLinkController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan link IG",
                        labelText: "IG link",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: fbLinkController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan link FB",
                        labelText: "FB link",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: ytLinkController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan link YT",
                        labelText: "YT link",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
