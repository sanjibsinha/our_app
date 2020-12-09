import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewContainer(optionalWidth: 50.0, optionalHeight: 50.0);
  }
}

Widget _listViewContainer(
        {double optionalWidth = 50.0, double optionalHeight = 50.0}) =>
    Center(
      //child: BoxdecorationContainer(),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        width: optionalWidth,
        height: optionalHeight,
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
                color: const Color(0xFF000000),
                width: 3.0,
                style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  const Color(0x00000000),
                  const Color(0xFF000000),
                ]),
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Our App',
            style: TextStyle(color: Colors.amber, fontSize: 30.0),
          ),
        ),
      ),
    );

class ListViewContainerOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewContainerOne(optionalWidth: 150.0, optionalHeight: 150.0);
  }
}

Widget _listViewContainerOne(
        {double optionalWidth = 50.0, double optionalHeight = 50.0}) =>
    Center(
      //child: BoxdecorationContainer(),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        width: optionalWidth,
        height: optionalHeight,
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
                color: const Color(0xFF000000),
                width: 3.0,
                style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  const Color(0x00000000),
                  const Color(0xFF000000),
                ]),
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Our App',
            style: TextStyle(color: Colors.amber, fontSize: 30.0),
          ),
        ),
      ),
    );

class ListViewContainerTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewContainerTwo(optionalWidth: 250.0, optionalHeight: 250.0);
  }
}

Widget _listViewContainerTwo(
        {double optionalWidth = 50.0, double optionalHeight = 50.0}) =>
    Center(
      //child: BoxdecorationContainer(),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        width: optionalWidth,
        height: optionalHeight,
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
                color: const Color(0xFF000000),
                width: 3.0,
                style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  const Color(0x00000000),
                  const Color(0xFF000000),
                ]),
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Our App',
            style: TextStyle(color: Colors.amber, fontSize: 30.0),
          ),
        ),
      ),
    );

class ListViewContainerThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewContainerThree(optionalWidth: 350.0, optionalHeight: 350.0);
  }
}

Widget _listViewContainerThree(
        {double optionalWidth = 50.0, double optionalHeight = 50.0}) =>
    Center(
      //child: BoxdecorationContainer(),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        width: optionalWidth,
        height: optionalHeight,
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
                color: const Color(0xFF000000),
                width: 3.0,
                style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  const Color(0x00000000),
                  const Color(0xFF000000),
                ]),
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Our App',
            style: TextStyle(color: Colors.amber, fontSize: 30.0),
          ),
        ),
      ),
    );
