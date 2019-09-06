import 'package:flutter/cupertino.dart';
import 'package:flutter_packagetest1/test1.dart';

class Test2 extends StatefulWidget {
  @override
  _Test2State createState() => _Test2State();

  void printLog() {

    print("------哈哈哈");




   Test1 t1= Test1();

   t1.pritFrom2();



  }
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
