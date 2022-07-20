import 'package:campus_pay/znewproject/zsellpage/usedpagez.dart';
import 'package:campus_pay/znewproject/zsellpage/zsellcart.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SellPagez extends StatefulWidget {
  static const String routename = "/sellpage";
  const SellPagez({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routename),
        builder: (context) => const SellPagez());
  }

  @override
  State<SellPagez> createState() => _SellPagezState();
}

class _SellPagezState extends State<SellPagez> {
  // late TabController controller;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   controller
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Campus Pay')),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (Context) => const UsedPsellz()));
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                            'https://static.scientificamerican.com/sciam/cache/file/1DDFE633-2B85-468D-B28D05ADAE7D1AD8_source.jpg?w=590&h=800&D80F3D79-4382-49FA-BE4B4D0C62A5C3ED'),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: const [
                              Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text('Used books'),
                              ))
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // return an alert
                        return AlertDialog(
                          title: const Text('Coming Soon'),
                          actions: <Widget>[
                            FlatButton(
                                child: const Text('close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                            'https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip'),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: const [
                              Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text('New books'),
                              ))
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // return an alert
                        return AlertDialog(
                          title: const Text('Coming Soon'),
                          actions: <Widget>[
                            FlatButton(
                                child: const Text('close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                            'https://i.guim.co.uk/img/media/77e3e93d6571da3a5d77f74be57e618d5d930430/0_0_2560_1536/master/2560.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=c99740fab952ee29d238d75272b98a61'),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: const [
                              Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(' Lecturers books'),
                              ))
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // return an alert
                        return AlertDialog(
                          title: const Text('Coming Soon'),
                          actions: <Widget>[
                            FlatButton(
                                child: const Text('close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.yellow,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                            'https://ychef.files.bbci.co.uk/976x549/p03gg1lc.jpg'),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Center(child: Text(' Ebooks')),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SellCartz(),
        ]),
      ),
    );
  }
}
