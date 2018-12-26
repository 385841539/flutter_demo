import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearLayoutRoute extends StatelessWidget {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("----"),
        ),
        body: new Column(
//          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.start, //表示laygravity
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange[700]]), //背景渐变
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4.0,
                      color: Colors.grey,
                      offset: Offset(9.0, 4.0)),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 30.0),
                child: Text("11"),
              ),
            ),
            Text(
              "          2222t",
//              style: TextStyle(height: 10.0),
            ),
            Padding(
              //左边添加8像素补白
              padding: const EdgeInsets.only(left: 8.0, top: 30.0),
              child: Text("Hello world"),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 60.9, minWidth: 100.0),
              child: Container(
                height: 5.0,
                child: redBox,
              ),
            ),
            Text("SizedBox"),
            SizedBox(
              width: 100.0,
              height: 90.0,
              child: redBox,
            )
          ],
        ));
  }
}
