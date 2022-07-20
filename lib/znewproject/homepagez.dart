import 'dart:io';

import 'package:campus_pay/znewproject/drawermenu.dart';
import 'package:campus_pay/znewproject/profile/profilepage.dart';
import 'package:campus_pay/znewproject/zsellpage/sellhome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../firebase.dart';
import 'prodinfo.dart';

final StateProvider<List<Map>> D = StateProvider((ref) => cart);

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<QueryDocumentSnapshot> listMap = [];
  @override
  void initState() {
    super.initState();
    readBooks().then((value) {
      listMap.addAll(value);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const DrawerM(),
        appBar: AppBar(
          title: const Text('Campus Pay'),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.person,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfilePage()));
                })
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(LineAwesomeIcons.shopping_cart),
            )
          ]),
        ),
        body: TabBarView(children: [
          listMap.isEmpty
              ? const CircularProgressIndicator()
              : GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: List.generate(
                      listMap.length,
                      (index) => InkWell(
                            onTap: () =>
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => ProdInfo(
                                          data: listMap[index],
                                        ))),
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    listMap[index][frontImage]),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(6)),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(listMap[index][name]),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              // cart.add(listMap[index]);
                                              context.read(D).state = cart;
                                            },
                                            icon: const Icon(
                                              Icons.shopping_cart,
                                              size: 15,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                ),

          // the cart page algorithm...........
          Consumer(builder: (context, watch, child) {
            List<Map> _cart = watch(D).state;
            int tottal = 0;
            for (var item in _cart) {
              tottal = (item['price'] + tottal);
            }
            int cp = 0;
            int cptotal = 0;
            for (var item in _cart) {
              if (item['price'] <= 4000) {
                cp = 200;
              } else if (item['price'] <= 10000) {
                cp = 300;
              } else if (item['price'] > 10000) {
                cp = 500;
              } else {
                cp = 0;
              }
              cptotal = (cptotal + cp);
            }

            int finaltotal = 0;
            finaltotal = (cptotal + tottal);

            // the ui for each item in the cartpage
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: _cart.length,
                        itemBuilder: (BuildContext context, index) {
                          return Card(
                            // color: Colors.black,
                            shadowColor: Colors.black87,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 65,
                                      backgroundImage: NetworkImage(
                                          listMap[index][frontImage]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 40),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(_cart[index][name]),
                                          Text(_cart[index][price].toString())
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Sub Total'),
                              Text(tottal.toString())
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('CP fee'),
                              Text(cptotal.toString())
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Total'),
                              Text(finaltotal.toString())
                            ],
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('PAY'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
        ]),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.sell),
            tooltip: 'Sell It',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const SellPagez()));
            }),
      ),
    );
  }
}

const frontImage = 'FrontImage';
const name = 'BookName';
const edition = 'Edition';
const location = 'Location';
const price = 'Price';
const backimage = 'BackImage';
const severemarking = 'Marking';

const unapprovedUloadedBooks = 'UnapprovedUloadedBooks';

Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> read() async {
  return await FirebaseFirestore.instance
      .collection(unapprovedUloadedBooks)
      .get()
      .then((value) => value.docs);
}

Future write(String name, String url) async {
  return await FirebaseFirestore.instance
      .collection(unapprovedUloadedBooks)
      .add({});
}

Future upload(File file) async {
  var v =
      FirebaseStorage.instance.ref('Books').child(DateTime.now().toString());
  var x = v.putFile(file);
  x.whenComplete(() {});
}
