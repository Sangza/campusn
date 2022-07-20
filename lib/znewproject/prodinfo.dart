import 'package:campus_pay/znewproject/homepagez.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProdInfo extends StatefulWidget {
  final QueryDocumentSnapshot data;
  const ProdInfo({Key? key, required this.data}) : super(key: key);

  @override
  State<ProdInfo> createState() => _ProdInfoState();
}

class _ProdInfoState extends State<ProdInfo> {
  List<dynamic> im = [];
  @override
  void initState() {
    super.initState();
    im.add(widget.data[frontImage]);
    im.add(widget.data[backimage]);
    im.add(widget.data[severemarking]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(widget.data['name']),
      // ),
      // body: Column(
      //   children: [
      //     Container(
      //       height: 300,
      //       child: PageView.builder(
      //         reverse: true,
      //         itemBuilder: (context, index) => Container(
      //           child: Image.network(im[index]),
      //         ),
      //         itemCount: im.length,
      //       ),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.price_change),
      //       title: Text(widget.data['price']),
      //     )
      //   ],
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: 50,
      //     child: FlatButton(onPressed: () {}, child: Text('Add to Cart')),
      //   ),
      // ),
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.data[name],
            style: const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: Center(
        child: PageView.builder(
          itemCount: im.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 70),
                child: Stack(children: [
                  Card(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 180),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height / 1.5,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: NetworkImage(im[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 150,
                        left: 40,
                        child: Row(
                          children: [
                            Text(
                              widget.data[name],
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              width: 250,
                            ),
                            Text(
                              widget.data[price],
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 120,
                        left: 40,
                        child: Text(
                          widget.data[edition],
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        ),
                      )
                    ]),
                  ),
                  Positioned(
                      bottom: -5.5,
                      left: 178,
                      child: ElevatedButton(
                          onPressed: () {
                            //  cart.add(widget.data);
                            context.read(D).state = cart;
                          },
                          child: const Text('Add to Cart')))
                ]),
              )),
        ),
      ),
      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           IconButton(
      //             onPressed: () {
      //               Navigator.of(context).pop();
      //             },
      //             icon: Icon(Icons.arrow_back),
      //           ),
      //           IconButton(
      //             onPressed: () {},
      //             icon: Icon(Icons.back_hand),
      //           ),
      //         ],
      //       ),
      //     ),

      //   ],
      //),
      // bottomNavigationBar: BottomAppBar(
      //     color: Colors.transparent,
      //     child: Container(
      //       height: 370,
      //       decoration: BoxDecoration(
      //         color: (Colors.grey),
      //         borderRadius: BorderRadius.only(
      //             topRight: Radius.circular(100),
      //             topLeft: Radius.circular(100)),
      //       ),
      //       child: Column(
      //         children: [
      //           Padding(
      //             padding:
      //                 const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(
      //                   widget.data[name],
      //                   style: TextStyle(
      //                       fontSize: 24, fontStyle: FontStyle.italic),
      //                 ),
      //                 Icon(Icons.favorite)
      //               ],
      //             ),
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 50),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   widget.data[edition],
      //                   style: TextStyle(
      //                       fontSize: 17, fontWeight: FontWeight.w300),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding:
      //                 const EdgeInsets.symmetric(horizontal: 60, vertical: 79),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(
      //                   "#" + widget.data[price].toString(),
      //                   style: TextStyle(
      //                       fontSize: 20, fontWeight: FontWeight.w400),
      //                 ),
      //                 ElevatedButton(
      //                   onPressed: () {
      //                     //cart.add(widget.data);
      //                     context.read(D).state = cart;
      //                   },
      //                   child: Text('Add to cart'),
      //                 )
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     )),
    );
  }
}

List<Map> cart = [];
