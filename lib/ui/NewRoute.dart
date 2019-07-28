import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("新路由"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text("这是我的一个新路由 界面"),
      ),
    );
  }
}
