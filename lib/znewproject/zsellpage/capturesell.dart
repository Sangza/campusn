import 'dart:io';

import 'package:campus_pay/znewproject/zsellpage/sellpayment.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Capturez extends StatefulWidget {
  final String bookname;
  final String bookedition;
  final String bookprice;
  final String booklocation;
  final String bookdata;

  const Capturez(
      {Key? key,
      required this.bookname,
      required this.bookedition,
      required this.bookprice,
      required this.booklocation,
      required this.bookdata})
      : super(key: key);

  @override
  State<Capturez> createState() => _CaptureState();
}

class _CaptureState extends State<Capturez> {
  File? frontImg;
  File? backImg;
  File? marking;
  Widget box(File? file) {
    return Container(
      height: 300,
      width: 350,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
            width: 5,
          ),
          image: file == null
              ? null
              : DecorationImage(image: FileImage(file), fit: BoxFit.cover)),
      child: Center(
        child: IconButton(
            onPressed: () => pickImage(file),
            icon: const Icon(Icons.camera_alt_rounded)),
      ),
    );
  }

  Future pickImage(File? file) async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    setState(() {
      if (file == frontImg) {
        frontImg = File(image.path);
      } else if (file == backImg) {
        backImg = File(image.path);
      } else if (file == marking) {
        marking = File(image.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookCapture'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text('Capture Front '),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: box(frontImg),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text('Capture Back'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: box(backImg),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text('Severe Marking'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: box(marking),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    if (frontImg != null &&
                        backImg != null &&
                        marking != null) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PayMentz(
                                bookName: widget.bookname,
                                frontPage: frontImg!,
                                backPage: backImg!,
                                bookData: widget.bookdata,
                                bookEdition: widget.bookedition,
                                bookLocation: widget.booklocation,
                                bookPrice: widget.bookprice,
                                markingPage: marking!,
                              )));
                    }
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black,
                    ),
                    height: 50,
                    width: 150,
                    child: const Center(
                        child: Text(
                      "CONFIRM",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
