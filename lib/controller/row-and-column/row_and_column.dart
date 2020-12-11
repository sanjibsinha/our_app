import 'package:flutter/material.dart';

class RowAndColumnController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _rowAndColumnController();
  }
}

Widget _rowAndColumnController() => Container(
      height: 200,
      width: 250,
      color: Colors.blueAccent,
      child: Column(
        // row operates along x axis
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        // text direction does the same thing horizontally
        verticalDirection: VerticalDirection.up,
        // right to left : the position of row children
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Text(
            'First',
            style: TextStyle(
              fontSize: 25.00,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Second',
            style: TextStyle(
              fontSize: 19.00,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            'Third',
            style: TextStyle(
              fontSize: 15.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
