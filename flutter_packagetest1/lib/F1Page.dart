

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/provider/01Provider.dart';

import 'package:flutter_packagetest2/test2.dart';


class FPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   FlatButton(
      child: Text("我是page1，点击回去 main"),
      textColor: Colors.green,
      onPressed: () {

      Test2 test2=  Test2();

      test2.printLog();
//                Navigator.pushNamed(context, "new_page");
//                Navigator.pushNamed(context, "tip_widgets");
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) {
              return new ProviderTest();
            }));
//
//
//                );
//
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) {
//                  return new EchoRoute("终极问题");
//                }));
      },
    );
  }
}
