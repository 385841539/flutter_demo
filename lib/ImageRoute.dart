import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("图片控件"),
      ),
      body: new Column(
        children: <Widget>[
          Text("网路图片"),
          Image(
            image: NetworkImage(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            ),
            width: 100.0,
          ),
          Text("本地图片"),
          Image(
            image: AssetImage("images/mine.jpg"),
            width: 100.0,
          ),
          Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 50.0,
            height: 50.0,
//            color: Colors.blue,
//            colorBlendMode: BlendMode.dstIn,
            repeat: ImageRepeat.repeatY,
          )
        ],
      ),
    );
  }
}
