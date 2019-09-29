import 'package:flutter/material.dart';

import 'package:components/src/pages/home_p.dart';
// import 'package:components/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      home:  HomeP()
    );
  }
}