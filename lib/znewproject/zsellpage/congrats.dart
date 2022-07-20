import 'package:campus_pay/znewproject/zsellpage/sellhome.dart';
import 'package:flutter/material.dart';

class Congratz extends StatefulWidget {
  const Congratz({Key? key}) : super(key: key);

  @override
  State<Congratz> createState() => _CongratState();
}

class _CongratState extends State<Congratz> {
  s() => Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const SellPagez()), ((route) => false));

  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10)).then((value) => s());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Campus Pay')),
      ),
      body: Column(
        children: const [
          Center(
              child: Text(
                  'Congratulations you have registered your book with Campus Pay')),
        ],
      ),
    );
  }
}
