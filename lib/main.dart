import 'package:flutter/material.dart';
import 'package:our_app/controller/inherited-widget/inherited_widget_tree.dart';

import 'controller/inherited-widget/inherited_widget_explained.dart';
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
