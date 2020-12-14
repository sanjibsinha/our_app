import 'package:flutter/material.dart';
import 'package:our_app/controller/inherited-widget/inherited_widget_tree.dart';

import 'controller/inherited-widget/inherited_widget_explained.dart';

main() => runApp(OurApp());

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our App',
      debugShowCheckedModeBanner: false,
      home: InheritedWidgetExplained(),
    );
  }
}

class OurAppPage extends StatefulWidget {
  @override
  _OurAppPageState createState() => _OurAppPageState();
}

class _OurAppPageState extends State<OurAppPage> {
  var _ourCounter = new OurCounter(ourCounter: 0);
  @override
  Widget build(BuildContext context) {
    return OurCounterSupplier(
      ourCounter: _ourCounter,
      child: Scaffold(
        body: InheritedWidgetTree(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _ourCounter.raiseCounter();
            });
          },
        ),
      ),
    );
  }
}
