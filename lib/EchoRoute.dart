import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  EchoRoute(this.tips1);
  String tips1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.tips1),
      ),
      body: Center(
        child: Text(this.tips1),
      ),
    );
  }
}
