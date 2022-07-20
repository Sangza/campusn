import 'package:flutter/material.dart';

class DrawerM extends StatefulWidget {
  const DrawerM({Key? key}) : super(key: key);

  @override
  State<DrawerM> createState() => _DrawerMState();
}

class _DrawerMState extends State<DrawerM> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: DrawerHeader(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Text(
                'Campus Pay',
                style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              ),
            )),
          ),
          ListTile(
            title: const Text('UsedBooks'),
            leading: const Icon(Icons.book),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('NewBooks'),
            leading: const Icon(Icons.book),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Ebooks'),
            leading: const Icon(Icons.book),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('LecturersBooks'),
            leading: const Icon(Icons.book),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'MarketPlace',
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            leading: const Icon(Icons.place),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
