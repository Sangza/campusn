import 'package:campus_pay/znewproject/zsellpage/capturesell.dart';
import 'package:flutter/material.dart';

class UsedPsellz extends StatefulWidget {
  const UsedPsellz({Key? key}) : super(key: key);

  @override
  State<UsedPsellz> createState() => _UsedPsellState();
}

class _UsedPsellState extends State<UsedPsellz> {
  String name = '';
  String edition = '';
  String location = '';
  String data = '';
  String price = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Used Books '),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Name of Book'),
                onChanged: (val) => name = val,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Edition'),
                onChanged: (val) => edition = val,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Location'),
                onChanged: (val) => location = val,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'data'),
                onChanged: (val) => data = val,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Price'),
                onChanged: (val) => price = val,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Capturez(
                            bookname: name,
                            bookdata: data,
                            bookedition: edition,
                            booklocation: location,
                            bookprice: price,
                          )));
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
            )
          ],
        ),
      ),
    );
  }
}
