import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: deprecated_member_use
import 'package:firebase/firebase.dart' as fb;
import 'package:image_picker/image_picker.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';

class SliderEdit extends StatefulWidget {
  final String id, judul, deskripsi, imageUrl;
  const SliderEdit(
      {super.key,
      required this.judul,
      required this.deskripsi,
      required this.imageUrl,
      required this.id});

  @override
  State<SliderEdit> createState() => _SliderEditState();
}

class _SliderEditState extends State<SliderEdit> {
  final _formKey = GlobalKey<FormState>();
  File? _pickedImage;
  Uint8List webImage = Uint8List(10);
  late String _imageUrl;
  late Uint8List imageFile;
  bool _isLoading = false;

  late final TextEditingController deskripsiController,
      paragraf2Controller,
      judulController;

  @override
  void initState() {
    judulController = TextEditingController(text: widget.judul);
    deskripsiController = TextEditingController(text: widget.deskripsi);

    _imageUrl = widget.imageUrl;

    super.initState();
  }

  @override
  void dispose() {
    deskripsiController.dispose();

    judulController.dispose();

    super.dispose();
  }

  void _editPengertian() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();

      try {
        Uri? imageUri;
        setState(() {
          _isLoading = true;
        });
        if (_pickedImage != null) {
          fb.StorageReference storageRef = fb
              .storage()
              .ref()
              .child('SliderContent')
              .child(widget.id + 'jpg');
          final fb.UploadTaskSnapshot uploadTaskSnapshot =
              await storageRef.put(kIsWeb ? webImage : _pickedImage).future;
          imageUri = await uploadTaskSnapshot.ref.getDownloadURL();
        }
        await FirebaseFirestore.instance
            .collection('SliderContent')
            .doc(widget.id)
            .update({
          'judul': judulController.text,
          'deskripsi': deskripsiController.text,
          'imageUrl':
              _pickedImage == null ? widget.imageUrl : imageUri.toString(),
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
                GlobalMethods.warningDialog(
                    title: 'Hapus?',
                    subtitle: 'Tekan OK',
                    fct: () async {
                      FirebaseFirestore.instance
                          .collection('SliderContent')
                          .doc(widget.id)
                          .delete();
                      await Fluttertoast.showToast(
                          msg: "Data Deleted", gravity: ToastGravity.CENTER);
                      while (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      return Navigator.pop(context);
                    },
                    context: context);
              },
              child: Container(
                height: 15,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Hapus",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              onTap: () {
                _editPengertian();
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
      body: Form(
        key: _formKey,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height:
                                  size.width > 650 ? 350 : size.width * 0.45,
                              decoration: BoxDecoration(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: _pickedImage == null
                                  ? Image.network(_imageUrl)
                                  : (kIsWeb)
                                      ? Image.memory(
                                          webImage,
                                          fit: BoxFit.fill,
                                        )
                                      : Image.file(
                                          _pickedImage!,
                                          fit: BoxFit.fill,
                                        ),
                            ),
                            const Padding(
                                padding: EdgeInsetsDirectional.only(top: 25)),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.blue,
                                    ),
                                    height: 40,
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton.icon(
                                          onPressed: () {
                                            _pickImage();
                                          },
                                          icon: const Icon(
                                            Icons.update,
                                            color: Colors.white,
                                          ),
                                          label: const Text(
                                            "Update Gambar",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                TextFormField(
                  controller: judulController,
                  key: const ValueKey('judul'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Judul tidak boleh kosong";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      icon: const FaIcon(
                        FontAwesomeIcons.paragraph,
                        color: Colors.black,
                      ),
                      hintText: "Masukkan Judul",
                      labelText: "Judul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                TextFormField(
                  controller: deskripsiController,
                  key: const ValueKey('deskripsi'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Deskripsi tidak boleh kosong";
                    }
                    return null;
                  },
                  maxLines: 10,
                  decoration: InputDecoration(
                      icon: const FaIcon(
                        FontAwesomeIcons.paragraph,
                        color: Colors.black,
                      ),
                      hintText: "Masukkan deskripsi",
                      labelText: "Deskripsi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    if (!kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var selected = File(image.path);
        setState(() {
          _pickedImage = selected;
        });
      } else {
        print('No image has been picked');
      }
    } else if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          webImage = f;
          _pickedImage = File('a');
        });
      } else {
        print('No image has been picked');
      }
    } else {
      print('Something went wrong');
    }
  }
}
