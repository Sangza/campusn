import 'package:flutter/material.dart';

class SellCartz extends StatefulWidget {
  static const String routename = '/SellCart';
  const SellCartz({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routename, arguments: '/SellCart'),
        builder: (_) => const SellCartz());
  }

  @override
  State<SellCartz> createState() => _SellCartzState();
}

class _SellCartzState extends State<SellCartz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Campus Pay'),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: 70,
      //     color: Colors.black,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(right: 20),
      //           child: IconButton(
      //               icon: const Icon(
      //                 Icons.home,
      //                 color: Colors.white,
      //               ),
      //               onPressed: () {}),
      //         ),
      //         IconButton(
      //             icon: const Icon(
      //               Icons.shopping_cart,
      //               color: Colors.white,
      //             ),
      //             onPressed: () {}),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: IconButton(
      //               icon: const Icon(
      //                 Icons.person,
      //                 color: Colors.white,
      //               ),
      //               onPressed: () {}),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int i) {
            return const ListTile(
              title: Text('Anatomy'),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://ychef.files.bbci.co.uk/976x549/p03gg1lc.jpg')),
            );
          },
        ),
      ),
    );
  }
}
