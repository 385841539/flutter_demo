import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransFormRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("----"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: double.infinity, //宽度尽可能大
            minHeight: 50.0 //最小高度为50像素
            ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
              child: Transform.translate(
                offset: Offset(6.0, 8.0),
                child: Text("sdconv"),
              ),
            ),
            Text("kkkkkkkkk"),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
              child: Transform.rotate(
                angle: 6.0,
                child: Text("sdconv"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(60.0),
              transform: Matrix4.rotationZ(6.0),
              alignment: Alignment.center,
              constraints: BoxConstraints.tightFor(width: 100.0, height: 70.0),
              decoration: BoxDecoration(color: Colors.red),
              child: Text("5:12"),
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text("hello world"),
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              color: Colors.red,
              child: Text("hello world"),
            )
          ],
        ),
      ),
    );
  }
}
