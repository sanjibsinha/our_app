import 'package:flutter/material.dart';

class ContainerController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _containerController();
  }
}

Widget _containerController() => Container(
      //padding: EdgeInsets.all(8.00),
// it fills the whole container
//constraints: BoxConstraints.expand(),
      alignment: Alignment.center,
//color: Colors.blue,
// we can adjust width and height
// to do that we need to commented out the constraints
      width: 350.00,
      height: 350.00,
// to skew the container
//transform: Matrix4.rotationZ(0.7),
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
      // padding will only work if the container padding is off
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'Our App',
          style: TextStyle(
            fontSize: 45.00,
            color: Colors.white,
          ),
        ),
      ),
    );
