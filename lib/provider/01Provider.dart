import 'package:flutter/material.dart';
import 'package:provide/provide.dart';

import 'CounterProvider.dart';

class ProviderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Provide<CountP>(builder:(context,childs,count){



        return   FlatButton(
          child: Text("点击我测试首页的provider递增"),

          textColor: Colors.green,
          onPressed: (){

            print("加--呵呵呵--");

            count.add();
          },
        );

//        return InkWell(
//
//          child: Text("点击我测试首页的provider递增"),
//
//          onTap: (){
////
//            print("加--呵呵呵--");
//
//            count.add();
//          },
//
//        );
      }),
    ),);
  }

  _add(CountP count) {



//    count.add();
  }
}
