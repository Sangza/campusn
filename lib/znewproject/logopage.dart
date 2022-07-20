import 'package:campus_pay/znewproject/homepagez.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoPge extends StatefulWidget {
  const LogoPge({Key? key}) : super(key: key);

  @override
  State<LogoPge> createState() => _LogoPgeState();
}

class _LogoPgeState extends State<LogoPge> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) =>
        Navigator.of(context).pushAndRemoveUntil(
            CupertinoPageRoute(builder: (context) => const Home()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'BOOkIE',
        style: TextStyle(
          fontSize: 40,
          color: Colors.blue,
        ),
      )),
    );
  }
}
