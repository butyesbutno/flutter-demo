import 'package:flutter/material.dart';
import 'package:flutterdemo/size.dart';

class LoginPage extends StatelessWidget {
  LoginPage({this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  
  List<Widget> buildLoginInputs() {
    List rows = ["手机号", "验证码", "密码"];
    List<Widget> widgets = new List<Widget>();
    rows.forEach((title) => (
      widgets.add(
      new Container(
        padding: EdgeInsets.fromLTRB(0,20,20,0),
        child: new Column(
          children: <Widget>[
          Container(
            child: Text(
                title,
                style: TextStyle(fontSize: getfont(14))),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(15,0,0,0),
          ),
          Container(
            height: 46,
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(15,0,0,0),
            child: TextField(
              style: TextStyle(fontSize: getfont(18), color: Colors.blue),//输入文本的样式
              decoration: new InputDecoration(
                //prefixIcon: Icon(Icons.search),
                //contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 24.0, 0.0),
                // border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                hintText: "请输入",
              ),
            ),
          ),
        ])
      ))
    ));
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context, 375, 667);
    return new Container(
      width:double.infinity,
      height: double.infinity,
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(getdw(30),getdh(90),0,10),
            height: 80,
            width: 80,
            color: Color.fromARGB(255, 255, 0, 0),
          ),
          Container(
            child: Column(children: buildLoginInputs()),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20,getdh(20),20,0),
            width: double.infinity,
            height: 80,
            child: RaisedButton(
              onPressed: (){Navigator.pushNamed(context, '/home');},
              child: Text(
                "登录",
                style: TextStyle(fontSize: getfont(18))),
              textColor: Color(0xffffffff),
              color: Color(0xff5E8AFF),
              highlightColor: Color(0xff00ff00),
              shape: const RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
          ),
        ],
      ),
    ));
  }
}
