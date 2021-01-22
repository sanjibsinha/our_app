import 'package:flutter/material.dart';
// import 'controller/inherited-widget/inherited_widget_on_top.dart';

void main() {
  runApp(OurApp());
}

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ACenterClass(),
      ),
    );
  }
}

class ACenterClass extends StatefulWidget {
  @override
  _ACenterClassState createState() => _ACenterClassState();
}

class _ACenterClassState extends State<ACenterClass> {
  var pressRemoteCount = 0;

  void pressRemote() {
    setState(() {
      pressRemoteCount = pressRemoteCount + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 350.00,
        height: 100.00,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.deepOrange,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 20.0,
              spreadRadius: 20.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.red,
              Colors.white,
            ],
          ),
// to make shape active we need to comment out borderRadius property and vice versa
          //shape: BoxShape.circle,
        ),
        child: Column(
          children: [
            Text(
              '$pressRemoteCount',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text(
                'Press Button',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blue,
                ),
              ),
              onPressed: pressRemote,
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * 
class OurScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It creates a piece of material dsign
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Hello, world!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 */
