import 'package:flutter/material.dart';
import 'package:our_app/controller/container/listview_container.dart';
//import 'package:our_app/controller/boxdecoration_container.dart';
//import 'package:our_app/controller/container_controller.dart';

main() => runApp(OurApp());

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our App',
      debugShowCheckedModeBanner: false,
      home: OurAppPage(),
    );
  }
}

class OurAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ListViewContainer(),
        ListViewContainerOne(),
        ListViewContainerTwo(),
        ListViewContainerThree(),
      ],
    ));
  }
}
