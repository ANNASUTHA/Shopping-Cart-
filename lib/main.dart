import 'package:flutter/material.dart';
import 'package:shopping_cart/Screens/HomePage_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{},
    );
  }
}
