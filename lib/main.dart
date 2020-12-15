import 'package:flutter/material.dart';
import 'controller/inherited-widget/inherited_widget_on_top.dart';

main() => runApp(OurApp());

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InheritedWidgetOnTop(),
      ),
    );
  }
}
