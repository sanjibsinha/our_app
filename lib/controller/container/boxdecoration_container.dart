import 'package:flutter/material.dart';

class BoxdecorationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _boxdecorationContainer();
  }
}

Widget _boxdecorationContainer() => Container(
      padding: const EdgeInsets.all(70.0),
      child: Text(
        'Moon',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 100.0,
            color: Colors.redAccent),
      ),

      //color: Colors.amber,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(-0.5, -0.6),
          radius: 0.15,
          colors: <Color>[
            const Color(0xFFEEEEFF),
            const Color(0xFF111144),
          ],
          stops: <double>[0.9, 1.0],
        ),
      ),
      //padding: EdgeInsets.all(15.0),
      //margin: EdgeInsets.all(15.0),
    );
