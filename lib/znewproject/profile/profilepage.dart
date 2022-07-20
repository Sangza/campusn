import 'package:campus_pay/znewproject/homepagez.dart';
import 'package:campus_pay/znewproject/profile/profilez.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 40),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_left,
                        size: 25,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Icon(
                      Icons.sunny,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Stack(children: [
                  const CircleAvatar(
                    radius: 75,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                          color: Colors.greenAccent, shape: BoxShape.circle),
                      child:
                          const Icon(Icons.edit, size: 15, color: Colors.black),
                    ),
                  ),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Ezeike Awele',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Ezeikeawele@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Profilez()));
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(28)),
                      color: Colors.grey,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.person),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 140),
                          child: Text(
                            'My Profile',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Profilez()));
                            },
                            icon: const Icon(Icons.forward_outlined))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.history),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 110),
                        child: Text(
                          'Purchase History',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.forward_outlined))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(LineAwesomeIcons.cog),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Text(
                          'Setting',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.forward_outlined))
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  color: Colors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(LineAwesomeIcons.user_plus),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 140),
                      child: Text(
                        'Invite a Friend',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.forward_outlined))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            FirebaseAuth.instance.signOut().then((value) =>
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => Home()))));
          },
          child: SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: Row(
                    children: const [
                      Icon(Icons.logout),
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 20,
                            decorationStyle: TextDecorationStyle.wavy),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final Icon;
  final Text;
  final IconButton;
  const ProfileButton({Key? key, this.Icon, this.Text, this.IconButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(28)),
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.person),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 140),
            child: Text(
              'My Profile',
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.forward))
        ],
      ),
    );
  }
}
