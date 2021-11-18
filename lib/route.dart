import 'package:flutter/material.dart';
import 'package:tokoku/screen/home/home.dart';
import 'package:tokoku/screen/introduction/intro.dart';

final Map<String, WidgetBuilder> routes = {
  Introduction.routeName: (context) => Introduction(),
  Home.routeName: (context) => Home(),
};
