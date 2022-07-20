import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<List<QueryDocumentSnapshot>> readBooks() async {
  return await FirebaseFirestore.instance
      .collection(booksCollections)
      .get()
      .then((value) => value.docs);
}

const booksCollections = 'Books';

Future<String> updloadDoc(File myFile) async {
  Reference ref =
      FirebaseStorage.instance.ref('Books').child(DateTime.now().toString());

  UploadTask upload = ref.putFile(myFile);

  TaskSnapshot progress = await upload.whenComplete(() {});
  if (progress.state == TaskState.success) {
    return await ref.getDownloadURL();
  } else {
    return '';
  }
}

// / Future<String> upload(File file) async {
//   final upload = FirebaseStorage.instance;
//   final _ref = upload.ref('Books').child('UsedBooks${Random().nextInt(10)}');
//   final uploading = await _ref.putFile(file);
//   if (uploading.state == TaskState.success) {
//     return await uploading.ref.getDownloadURL();
//   } else {
//     return '';
//   }
// }

// Future<String> uploaded(File yourfile) async {
//   final upload = await FirebaseStorage.instance
//       .ref(booksCollections)
//       .child(DateTime.april.toString())
//       .putFile(yourfile);
//   if (upload.state == TaskState.success) {
//     return await upload.ref.getDownloadURL();
//   } else
//     return '';
// }

Future writeToDB(Map<String, dynamic> data) async {
  await FirebaseFirestore.instance.collection(booksCollections).add(data);
}
