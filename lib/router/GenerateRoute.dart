import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/router/RouteConstants.dart';
import 'package:flutter_sleep_app/views/Home.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
