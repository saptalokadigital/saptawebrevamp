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
import 'package:saptaloka_web_revamp/Admin/main_screens/portfolio_admin/crud_it/it_screens.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';

class PortfolioItEdit extends StatefulWidget {
  final String id, title, deskripsi, imageUrl, imageUrl2, category;
  const PortfolioItEdit(
      {super.key,
      required this.title,
      required this.deskripsi,
      required this.imageUrl,
      required this.id,
      required this.imageUrl2,
      required this.category});

  @override
  State<PortfolioItEdit> createState() => _PortfolioItEditState();
}

class _PortfolioItEditState extends State<PortfolioItEdit> {
  String? selectedValue = null;
  List<DropdownMenuItem<String>> get dropdownItemsKategori {
    List<DropdownMenuItem<String>> menuItemsKategori = [
      DropdownMenuItem(child: Text("Website"), value: "website"),
      DropdownMenuItem(child: Text("Apps"), value: "apps"),
      DropdownMenuItem(child: Text("Game"), value: "game"),
    ];
    return menuItemsKategori;
  }

  final _formKey = GlobalKey<FormState>();
  File? _pickedImage;
  File? _pickedImage2;
  Uint8List webImage = Uint8List(10);
  Uint8List webImage2 = Uint8List(10);
  late String _imageUrl;
  late String _imageUrl2;
  late Uint8List imageFile;
  bool _isLoading = false;

  late final TextEditingController deskripsiController,
      categoryController,
      titleController;

  @override
  void initState() {
    titleController = TextEditingController(text: widget.title);
    deskripsiController = TextEditingController(text: widget.deskripsi);
    categoryController = TextEditingController(text: widget.category);
    selectedValue = widget.category;
    _imageUrl = widget.imageUrl;
    _imageUrl2 = widget.imageUrl2;

    super.initState();
  }

  @override
  void dispose() {
    deskripsiController.dispose();
    categoryController.dispose();
    titleController.dispose();

    super.dispose();
  }

  void _editPortfolio() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();

      try {
        Uri? imageUri;
        Uri? imageUri2;
        setState(() {
          _isLoading = true;
        });
        if (_pickedImage != null) {
          fb.StorageReference storageRef =
              fb.storage().ref().child('Portfolio').child(widget.id + 'jpg');
          final fb.UploadTaskSnapshot uploadTaskSnapshot =
              await storageRef.put(kIsWeb ? webImage : _pickedImage).future;
          imageUri = await uploadTaskSnapshot.ref.getDownloadURL();
        }
        if (_pickedImage2 != null) {
          fb.StorageReference storageRef2 = fb
              .storage()
              .ref()
              .child('Portfolio')
              .child(widget.imageUrl2 + 'jpg');
          final fb.UploadTaskSnapshot uploadTaskSnapshot2 =
              await storageRef2.put(kIsWeb ? webImage2 : _pickedImage2).future;
          imageUri2 = await uploadTaskSnapshot2.ref.getDownloadURL();
        }
        await FirebaseFirestore.instance
            .collection('PortfolioIt')
            .doc(widget.id)
            .update({
          'title': titleController.text,
          'deskripsi': deskripsiController.text,
          'category': selectedValue,
          'imageUrl':
              _pickedImage == null ? widget.imageUrl : imageUri.toString(),
          'imageUrl2':
              _pickedImage2 == null ? widget.imageUrl2 : imageUri2.toString(),
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
                          .collection('PortfolioIt')
                          .doc(widget.id)
                          .delete();
                      await Fluttertoast.showToast(
                          msg: "Data Deleted", gravity: ToastGravity.CENTER);
                      while (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      return Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PortfolioItScreens()));
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
                _editPortfolio();
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
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
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
                    controller: titleController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Title tidak boleh kosong";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: const FaIcon(
                          FontAwesomeIcons.paragraph,
                          color: Colors.black,
                        ),
                        hintText: "Masukkan Title",
                        labelText: "Title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  TextFormField(
                    controller: deskripsiController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Deskripsi tidak boleh kosong";
                      }
                      return null;
                    },
                    maxLines: 8,
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
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: DropdownButton(
                                value: selectedValue,
                                items: dropdownItemsKategori,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                },
                                hint: Text('Pilih Kategori'),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
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
                                child: _pickedImage2 == null
                                    ? Image.network(_imageUrl2)
                                    : (kIsWeb)
                                        ? Image.memory(
                                            webImage2,
                                            fit: BoxFit.fill,
                                          )
                                        : Image.file(
                                            _pickedImage2!,
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
                                              _pickImage2();
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
                ],
              ),
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

  Future<void> _pickImage2() async {
    if (!kIsWeb) {
      final ImagePicker _picker2 = ImagePicker();
      XFile? image2 = await _picker2.pickImage(source: ImageSource.gallery);
      if (image2 != null) {
        var selected = File(image2.path);
        setState(() {
          _pickedImage2 = selected;
        });
      } else {
        print('No image has been picked');
      }
    } else if (kIsWeb) {
      final ImagePicker _picker2 = ImagePicker();
      XFile? image2 = await _picker2.pickImage(source: ImageSource.gallery);
      if (image2 != null) {
        var f = await image2.readAsBytes();
        setState(() {
          webImage2 = f;
          _pickedImage2 = File('a');
        });
      } else {
        print('No image has been picked');
      }
    } else {
      print('Something went wrong');
    }
  }
}
