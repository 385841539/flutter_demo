import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexLayoutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("----"),
      ),
      body: new Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Text(
              "毛蛋",
              style: TextStyle(color: Colors.red),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text("啥毛蛋？"),
          ),
        ],
      ),
    );
  }
}
