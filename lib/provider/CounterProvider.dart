import 'package:flutter/material.dart';

class CountP with ChangeNotifier{


  int count=0;

  add(){


    count++;

    notifyListeners();

  }




}