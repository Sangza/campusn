import 'dart:io';

import 'package:campus_pay/znewproject/homepagez.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_paystack/flutter_paystack.dart';

import '../../firebase.dart';

class PayMentz extends StatefulWidget {
  final String bookName;
  final String bookPrice;
  final String bookEdition;
  final String bookData;
  final String bookLocation;
  final File frontPage;
  final File backPage;
  final File markingPage;
  const PayMentz(
      {Key? key,
      required this.bookName,
      required this.frontPage,
      required this.bookPrice,
      required this.bookEdition,
      required this.bookData,
      required this.bookLocation,
      required this.backPage,
      required this.markingPage})
      : super(key: key);

  @override
  State<PayMentz> createState() => _PayMentzState();
}

// PaystackPlugin x = PaystackPlugin();

class _PayMentzState extends State<PayMentz> {
  @override
  void initState() {
    super.initState();
    // x.initialize(publicKey: 'pk_live_26ab22b9dbec145d9c94118c58ee7a05c1474f1b');
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [];
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('PayMent')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ElevatedButton(
          //     onPressed: () async {
          //       int? _cost = int.tryParse(widget.bookPrice);
          //       bool _response =
          //           await pay(context, _cost ?? 1000, "ezeagu@gmail.com");
          //       if (_response == true) {
          //         String frntUrl = await updloadDoc(widget.frontPage);
          //         String backUrl = await updloadDoc(widget.backPage);
          //         String markingUrl = await updloadDoc(widget.markingPage);
          //         await writeToDB({
          //           frontImage: frntUrl,
          //           name: widget.bookName,
          //           backimage: backUrl,
          //           edition: widget.bookEdition,
          //           price: widget.bookPrice,
          //           severemarking: markingUrl,
          //           location: widget.bookLocation,
          //         });
          //       }
          //     },
          //     child: const Text('Upload'))
        ],
      ),
    );
  }
}

// Future<bool> pay(BuildContext context, int cost, String email) async {
//   var _response = await x.checkout(
//     context,
//     charge: Charge()
//       ..amount = cost
//       ..email = email
//       ..reference = DateTime.now().toString(),
//     fullscreen: false,
//     method: CheckoutMethod.card,
//   );
//   return _response.status;
// }
