// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class First extends StatelessWidget {
//   const First({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(builder: (context, watch, child) {
//       List<N> t = watch(f).state;
//       return Scaffold(
//         body: ListView.builder(
//           itemCount: t.length,
//           itemBuilder: (BuildContext context, int index) {
//             return TextButton(
//               child: Text(t[index].name ?? ''),
//               onPressed: () {
//                 N newProduct = N(name: 'HHH', pic: 'gggg');
//                 list.add(newProduct);
//                 context.read(f).state = list;
//               },
//             );
//           },
//         ),
//       );
//     });
//   }
// }

// final StateProvider<List<N>> f = StateProvider((ref) => list);
// List<N> list = [];

// class N {
//   final String? name;
//   final String? pic;
//   N({this.name, this.pic});
// }


