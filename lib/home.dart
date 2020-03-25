import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  
  @override
  Widget build(BuildContext context) {

    return new Container(
      width:double.infinity,
      height: double.infinity,
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width:double.infinity,
              child: Text("占1/6", style: TextStyle(color: Colors.white)),
              color: Color.fromARGB(255, 255, 0, 0)
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width:double.infinity,
              child: Text("占1/3", style: TextStyle(color: Colors.white)),
              color: Color.fromARGB(255, 0, 255, 0)
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width:double.infinity,
              child: Text("占1/2", style: TextStyle(color: Colors.white)),
              color: Color.fromARGB(255, 0, 0, 255)
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
