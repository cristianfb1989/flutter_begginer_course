import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: MyStafulWidget()));
  //runApp(MyStatelessWidget());
  // runApp(Container(
  //     color: Colors.red,
  //     child: Center(
  //         child: Text("Hello",
  //             textDirection: TextDirection.ltr,
  //             style: TextStyle(fontSize: 32, color: Colors.white)))));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Center(
            child: Text("Hello",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 32, color: Colors.white))));
  }
}

class MyStafulWidget extends StatefulWidget {
  @override
  _MyStafulWidgetState createState() => _MyStafulWidgetState();
}

class _MyStafulWidgetState extends State<MyStafulWidget> {
  var myColor = Colors.red;
  changeColor() {
    setState(() {
      myColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Flutter Beginner", textDirection: TextDirection.ltr),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.beenhere),
                  onPressed: () {
                    print("Icon");
                  }),
              IconButton(
                  icon: Icon(Icons.map),
                  onPressed: () {
                    print("Icon");
                  })
            ]),
        drawer: Drawer(
            child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Image(image: AssetImage("images/drawer_image.jpg")),
            Padding(
                padding: EdgeInsets.only(top: 30, left: 16),
                child: CircleAvatar(
                    radius: 40, backgroundImage: AssetImage("images/I.jpg"))),
            Padding(
                padding: EdgeInsets.only(top: 120, left: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Cristian Fabian",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white)),
                      Text("cristian.fb@outlook.com.ar",
                          style: TextStyle(color: Colors.white))
                    ]))
          ]),
          ListView(shrinkWrap: true, children: <Widget>[
            ListTile(
                leading: Icon(Icons.add),
                title: Text("Hello there"),
                onTap: () {})
          ])
        ])));
    // return Padding(
    //     padding: EdgeInsets.only(top: 40, left: 8, right: 8),
    //     // padding: EdgeInsets.all(8.0),
    //     child: Column(children: <Widget>[
    //       Card(
    //           child: Padding(
    //               padding: EdgeInsets.all(24),
    //               child:
    //                   Row(textDirection: TextDirection.ltr, children: <Widget>[
    //                 IconButton(
    //                     icon: Icon(Icons.person,
    //                         textDirection: TextDirection.ltr),
    //                     onPressed: () {
    //                       print("Persona");
    //                     }),
    //                 Expanded(
    //                     child:
    //                         Text("Child 2", textDirection: TextDirection.ltr)),
    //                 IconButton(
    //                     icon: Icon(Icons.add, textDirection: TextDirection.ltr),
    //                     onPressed: () {
    //                       print("Agregar");
    //                     })
    //               ]))),
    //       Padding(
    //           padding: EdgeInsets.only(top: 8.0),
    //           child: Card(
    //               child: Padding(
    //                   padding: EdgeInsets.all(24),
    //                   child: Row(
    //                       textDirection: TextDirection.ltr,
    //                       children: <Widget>[
    //                         IconButton(
    //                             icon: Icon(Icons.person,
    //                                 textDirection: TextDirection.ltr),
    //                             onPressed: () {
    //                               print("Persona");
    //                             }),
    //                         Text("Child 1", textDirection: TextDirection.ltr),
    //                         Text("Child 1", textDirection: TextDirection.ltr)
    //                       ])))),
    //       Image(image: AssetImage("images/1RLP6C4.jpg"))
    //     ]));

    // return Column(
    //   children: <Widget>[
    //     Text("Column 1", textDirection: TextDirection.ltr),
    //       Text("Column 2", textDirection: TextDirection.ltr),
    //       Text("Column 3", textDirection: TextDirection.ltr),
    //       Row(textDirection: TextDirection.ltr, children: <Widget>[
    //         Text("Row 1", textDirection: TextDirection.ltr),
    //         Text("Row 2", textDirection: TextDirection.ltr),
    //         Text("Row 3", textDirection: TextDirection.ltr)
    //       ])
    //   ],
    // );

    // return Container(
    //     color: myColor,
    //     child: Center(
    //         child: RaisedButton(
    //             onPressed: () {
    //               changeColor();
    //             },
    //             child: Text("Click", textDirection: TextDirection.ltr))));
  }
}
