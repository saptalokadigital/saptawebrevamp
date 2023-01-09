import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saptaloka_web_revamp/global_methods.dart';
import 'package:saptaloka_web_revamp/widgets/text_widget.dart';
import 'package:uuid/uuid.dart';

// ignore: deprecated_member_use
import 'package:firebase/firebase.dart' as fb;

class ClientAdd extends StatefulWidget {
  const ClientAdd({super.key});

  @override
  State<ClientAdd> createState() => _ClientAddState();
}

class _ClientAddState extends State<ClientAdd> {
  File? _pickedImage;
  Uint8List webImage = Uint8List(10);
  late String _imageUrl;
  bool _isLoading = false;

  void uploadFormPartnerSapta() async {
    if (_pickedImage == null) {
      GlobalMethods.errorDialog(
          subtitle: 'Please pick up an image', context: context);
      return;
    }
    final _uuid = const Uuid().v4();
    try {
      setState(() {
        _isLoading = true;
      });
      fb.StorageReference storageRef =
          fb.storage().ref().child('partner_saptaloka').child(_uuid + 'jpg');
      final fb.UploadTaskSnapshot uploadTaskSnapshot =
          await storageRef.put(kIsWeb ? webImage : _pickedImage).future;
      Uri imageUri = await uploadTaskSnapshot.ref.getDownloadURL();
      await FirebaseFirestore.instance
          .collection('partner_saptaloka')
          .doc(_uuid)
          .set({
        'id': _uuid,
        'imageUrl': imageUri.toString(),
        'createdAt': Timestamp.now(),
      });
      _clearForm();
      Fluttertoast.showToast(
        msg: "Product uploaded succefully",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        // backgroundColor: ,
        // textColor: ,
        // fontSize: 16.0
      );
    } on FirebaseException catch (error) {
      GlobalMethods.errorDialog(subtitle: '${error.message}', context: context);
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

  void _clearForm() {
    setState(() {
      _pickedImage = null;
      webImage = Uint8List(8);
    });
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
        title: Text("Partner",
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue))),
      ),
      body: Form(
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
                            height: size.width > 650 ? 350 : size.width * 0.45,
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: _pickedImage == null
                                ? dottedBorder(color: Colors.black)
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: kIsWeb
                                        ? Image.memory(webImage,
                                            fit: BoxFit.fill)
                                        : Image.file(_pickedImage!,
                                            fit: BoxFit.fill),
                                  ),
                          ),
                          Padding(padding: EdgeInsetsDirectional.only(top: 25)),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Colors.red,
                                  ),
                                  height: 40,
                                  width: 220,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          setState(() {
                                            _pickedImage = null;
                                            webImage = Uint8List(8);
                                          });
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                        ),
                                        label: Text(
                                          "Hapus Gambar",
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
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: InkWell(
                        onTap: () {
                          uploadFormPartnerSapta();
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Tambah",
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
              )
            ],
          ),
        ),
      )),
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

  Widget dottedBorder({
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
          dashPattern: const [6.7],
          borderType: BorderType.RRect,
          color: color,
          radius: const Radius.circular(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.image_outlined,
                  color: color,
                  size: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: (() {
                      _pickImage();
                    }),
                    child: TextWidget(
                      text: 'Pilih Gambar',
                      color: Colors.blue,
                    ))
              ],
            ),
          )),
    );
  }
}
