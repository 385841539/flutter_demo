import 'package:flutter/material.dart';
import 'package:flutter_app/provider/01Provider.dart';
import 'package:flutter_app/ui/CheckBoxRoute.dart';
import 'package:flutter_app/ui/EchoRoute.dart';
import 'package:flutter_app/ui/FlexLayoutRoute.dart';
import 'package:flutter_app/ui/ImageRoute.dart';
import 'package:flutter_app/ui/LinearLayoutRoute.dart';
import 'package:flutter_app/ui/NewRoute.dart';
import 'package:flutter_app/ui/RandomWords.dart';
import 'package:flutter_app/ui/StagLayoutRoute.dart';
import 'package:flutter_app/ui/TextRoute.dart';
import 'package:flutter_app/ui/TransFormRoute.dart';
import 'package:flutter_app/ui/uiwidget.dart';
import 'package:flutter_packagetest1/test1.dart';
import 'package:flutter_packagetest1/F1Page.dart';
import 'package:provide/provide.dart';

import 'provider/CounterProvider.dart';

void main() {


  Test1();

  var countp=CountP();


 var providers= Providers();


 providers..provide(Provider<CountP>.value(countp));


  runApp(ProviderNode(child: new MyApp(), providers: providers));

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.green,
      ),
      routes: {
        "new_page": (context) => NewRoute(),
        "tip_widgets": (context) => EchoRoute("内容固定")
      },
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            FlatButton(
              child: Text("跳转去基础UI、布局界面"),
              textColor: Colors.green,
              onPressed: () {
//                Navigator.pushNamed(context, "new_page");
//                Navigator.pushNamed(context, "tip_widgets");
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new UiWidget();
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
            ),
            FlatButton(
              child: Text("跳转去FPage1"),
              textColor: Colors.green,
              onPressed: () {
//                Navigator.pushNamed(context, "new_page");
//                Navigator.pushNamed(context, "tip_widgets");
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FPage1();
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
            ),


            Provide<CountP>(builder:(context,chils,cout){

              return     FlatButton(
                child: Text("跳转去Provider基础界面---${cout.count}"),
                textColor: Colors.green,
                onPressed: () {
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

            }),




          ],
        ),
      ),
    );
  }
}
