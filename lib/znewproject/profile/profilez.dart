import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Profilez extends StatefulWidget {
  const Profilez({Key? key}) : super(key: key);

  @override
  State<Profilez> createState() => _ProfilezState();
}

class _ProfilezState extends State<Profilez> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              subtitle: const Text('Mane'),
              title: const Text('Name'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    isDismissible: true,
                    enableDrag: true,
                    context: context,
                    builder: (context) => Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        hintText: 'Enter your name'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('SAVE')),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('CANCEL'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
              },
            ),
            const Divider(
              indent: 30,
            ),
            ListTile(
              leading: const Icon(Icons.email),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              subtitle: const Text('Email'),
              title: const Text(''),
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    isDismissible: true,
                    enableDrag: true,
                    context: context,
                    builder: (context) => Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        hintText: 'Enter your Email'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('SAVE')),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('CANCEL'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(indent: 30),
            ListTile(
              leading: const Icon(Icons.location_pin),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              subtitle: const Text('Location'),
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    isDismissible: true,
                    enableDrag: true,
                    context: context,
                    builder: (context) => Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        hintText: 'Enter your Location'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('SAVE')),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('CANCEL'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(indent: 30),
            ListTile(
              leading: const Icon(Icons.call),
              subtitle: const Text('Phone Number'),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(indent: 30),
            const ListTile(
              leading: Icon(LineAwesomeIcons.school),
              subtitle: Text('Name Of Institution'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              indent: 30,
            ),
            const ListTile(
              leading: Icon(LineAwesomeIcons.graduation_cap),
              subtitle: Text('Department'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              indent: 30,
            ),
          ],
        ),
      ),
    );
  }
}

// class Name extends StatefulWidget {
//   Name({Key? key}) : super(key: key);

//   @override
//   State<Name> createState() => _NameState();
// }

// class _NameState extends State<Name> {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       insetPadding: EdgeInsets.all(10),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//               width: double.infinity,
//               height: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
//               child: Column(
//                 children: [TextFormField()],
//               ))
//         ],
//       ),
//     );
//   }
// }
