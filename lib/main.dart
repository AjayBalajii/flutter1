import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLayout(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.apps,
              color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset(
                'images/d.png',
                width: 20,
                height: 20,
              )),
          BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(
                Icons.source,
                color: Colors.deepPurpleAccent,
              )),
        ],
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return Container(
    child: ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            title: Text(
              'Subscriptions',
              style: TextStyle(fontSize: 30),
            ),
            trailing: FloatingActionButton(
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.add),
            ),
            contentPadding: EdgeInsets.all(20),
          ),
          ListTile(
            leading: Image.asset(
              'images/bare.png',
              height: 70,
              width: 70,
            ),
            title: Row(
              children: [
                Column(children: [
                  Container(
                      margin: EdgeInsets.only(left: 44),
                      child: Text(
                        'subscribed',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.deepPurpleAccent),
                        textAlign: TextAlign.left,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        'Bare Ware',
                        style: TextStyle(fontSize: 20),
                      ))
                ])
              ],
            ),
            trailing: Icon(Icons.navigate_next),
            subtitle: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.red,
                ),
              ),
              Container(
                child: Text('68 Episodes'),
              ),
            ]),
            isThreeLine: true,
            contentPadding: EdgeInsets.all(10),
          ),
          ListTile(
            leading: Image.asset(
              'images/the.png',
              height: 70,
              width: 70,
            ),
            title: Row(
              children: [
                Column(children: [
                  Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'subscribed',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.deepPurpleAccent),
                        textAlign: TextAlign.left,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        'The Simpsons',
                        style: TextStyle(fontSize: 20),
                      ))
                ])
              ],
            ),
            trailing: Icon(Icons.navigate_next),
            subtitle: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.red,
                ),
              ),
              Container(
                child: Text('639 Episodes'),
              ),
            ]),
            isThreeLine: true,
            contentPadding: EdgeInsets.all(10),
          ),
          ListTile(
            leading: Image.asset(
              'images/jony.png',
              height: 70,
              width: 70,
            ),
            title: Row(
              children: [
                Column(children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'subscribed',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.deepPurpleAccent),
                        textAlign: TextAlign.left,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        'Jhonny Bravo',
                        style: TextStyle(fontSize: 20),
                      ))
                ])
              ],
            ),
            trailing: Icon(Icons.navigate_next),
            subtitle: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.red,
                ),
              ),
              Container(
                child: Text('102 Episodes'),
              ),
            ]),
            isThreeLine: true,
            contentPadding: EdgeInsets.all(10),
          ),
          ListTile(
            leading: Image.asset(
              'images/Ben_10.png',
              height: 70,
              width: 70,
            ),
            title: Row(
              children: [
                Column(children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Expired',
                        style: TextStyle(
                            color: Colors.red, backgroundColor: Colors.white10),
                        textAlign: TextAlign.left,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        'Ben 10',
                        style: TextStyle(fontSize: 20),
                      ))
                ])
              ],
            ),
            trailing: Icon(Icons.navigate_next),
            subtitle: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.red,
                ),
              ),
              Container(
                child: Text('285 Episodes'),
              ),
            ]),
            isThreeLine: true,
            contentPadding: EdgeInsets.all(10),
          ),
        ],
      ).toList(),
    ),
  );
}
