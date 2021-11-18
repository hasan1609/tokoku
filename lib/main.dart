import 'package:flutter/material.dart';
import 'package:tokoku/route.dart';
import 'package:tokoku/screen/home/home.dart';
import 'package:tokoku/screen/introduction/intro.dart';
import 'package:tokoku/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: Home.routeName,
      routes: routes,
    );
  }
}
