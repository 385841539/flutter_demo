import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StagLayoutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //framlayout
      appBar: AppBar(
        title: Text("----"),
      ),
      body: new ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
//          fit: StackFit.expand, //未定位widget占满Stack整个空间
          children: <Widget>[
            Text("一个测试文本"),
            Positioned(
              bottom: 40.0,
              right: 40.0,
              child: new Column(
                children: <Widget>[
                  Text("一个 定位文本"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
