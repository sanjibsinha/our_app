import 'package:flutter/material.dart';
import 'controller/inherited-widget/rebuilding_inherited_widget.dart';

main() => runApp(OurApp());

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our App',
      debugShowCheckedModeBanner: false,
      home: RebuildingInheritedWidget(),
    );
  }
}
