import 'package:flutter/material.dart';

class CustomNavigator{

  void goTo(BuildContext context,Widget widget){
    Navigator.push(context,MaterialPageRoute(builder: (context) => widget));
  }
}