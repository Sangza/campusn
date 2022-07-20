import 'package:flutter/material.dart';

class CartNew extends StatefulWidget {
  const CartNew({Key? key}) : super(key: key);

  @override
  State<CartNew> createState() => _CartNewState();
}

class _CartNewState extends State<CartNew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          // color: Colors.black,
          shadowColor: Colors.black,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
      ],
    );
  }
}
