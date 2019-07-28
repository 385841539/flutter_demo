import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文字Text页面"),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            "我擦" * 13,
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
                color: Colors.red,
                fontSize: 18.0,
                height: 2.0),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Home: "),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.blue),
            ),
            TextSpan(text: " attention", style: TextStyle(color: Colors.grey))
          ]))
        ],
      ),
    );
    return Text(
      "Hello" * 14,
      textAlign: TextAlign.center,
      textScaleFactor: 1.5,
    );
  }
}
