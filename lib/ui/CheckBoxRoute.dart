import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxRoute extends StatefulWidget {
  final bool inValue = true;
  @override
  _CheckBoxWidget createState() => new _CheckBoxWidget();
}

class _CheckBoxWidget extends State<CheckBoxRoute> {
  bool _checkBoxState;
  bool _switchState = true;

  TextEditingController _textControl = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _checkBoxState = widget.inValue;
    _textControl.text = "hello world!";
    _textControl.selection =
        TextSelection(baseOffset: 2, extentOffset: _textControl.text.length);
    //初始化状态
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("----"),
      ),
      body: new Column(
        children: <Widget>[
          Checkbox(
            value: _checkBoxState,
            activeColor: Colors.red,
            onChanged: (valus) {
              setState(() {
                _checkBoxState = valus;
                print(_textControl.text);
              });
//              print(valus);
            },
          ),
          Switch(
            value: _switchState,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                _switchState = value;
              });
            },
          ),
          Form(
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                    autofocus: true,
                    controller: _textControl,
                    decoration: InputDecoration(
                        labelText: "用户名",
                        hintText: "用户名或邮箱",
                        prefixIcon: Icon(Icons.person)),
                    // 校验用户名
                    validator: (v) {
                      return v.trim().length > 0 ? null : "用户名不能为空";
                    }),
                TextField(
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "请输入密码",
                      prefixIcon: Icon(Icons.lock)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(CheckBoxRoute oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print("changeDenpendencies");
  }
}
