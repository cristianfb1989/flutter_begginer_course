import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_begginer_course/screen2.dart';
import 'package:flutter_begginer_course/screen3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStafulWidget(),
    theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.lime,
        brightness: Brightness.dark),
    routes: <String, WidgetBuilder>{
      "/screen2": (BuildContext context) => Screen2(),
      "/screen3": (BuildContext context) => Screen3(),
    },
  ));
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
  List list = List();
  bool checkInput = false;
  int gender = 1;
  var myColor = Colors.red;
  changeColor() {
    setState(() {
      myColor = Colors.blue;
    });
  }

  String input = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list.add("nr. 1");
    list.add("nr. 2");
    list.add("nr. 3");
    list.add("nr. 4");
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
                  }),
              IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen2');
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
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.add),
                title: Text("Hello there"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.add),
                title: Text("Hello there"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.add),
                title: Text("Hello there"),
                onTap: () {}),
          ])
        ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        title: Text("Add item"),
                        content: TextField(onChanged: (String value) {
                          input = value;
                        }),
                        actions: <Widget>[
                          FlatButton(
                              onPressed: () {
                                setState(() {
                                  list.add(input);
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text("Add"))
                        ]);
                  });
            },
            child: Icon(Icons.add)),
        body: Column(children: <Widget>[
          Text("Body", textDirection: TextDirection.ltr),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person), hintText: "Username"),
                  onChanged: (input) {
                    print(input);
                  })),
          Checkbox(
              value: checkInput,
              onChanged: (bool value) {
                print(value);
                setState(() {
                  checkInput = value;
                });
              }),
          ButtonBar(children: <Widget>[
            Radio(
                value: 1,
                groupValue: gender,
                onChanged: (int value) {
                  setState(() {
                    gender = value;
                    print(gender);
                  });
                }),
            Radio(
                value: 2,
                groupValue: gender,
                onChanged: (int value) {
                  setState(() {
                    gender = value;
                    print(gender);
                  });
                })
          ]),
          ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Dismissible(
                    key: Key(index.toString()),
                    child: ListTile(title: Text(list[index])),
                    onDismissed: (direction) {
                      setState(() {
                        list.removeAt(index);
                      });
                    });
              })
        ]));

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
