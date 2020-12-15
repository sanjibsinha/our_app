import 'package:flutter/material.dart';
import 'package:our_app/controller/inherited-widget/widgets-lists/widgets_lists.dart';

class BuildingInheritedWidget extends StatefulWidget {
  @override
  _BuildingInheritedWidgetState createState() =>
      _BuildingInheritedWidgetState();
}

class _BuildingInheritedWidgetState extends State<BuildingInheritedWidget> {
  var newAge = new ChangeAge(age: 25);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          EyeColor(
              color: Colors.deepOrange,
              child: Builder(builder: (BuildContext innerContext) {
                return Text(
                  'Building InheritedWidget',
                  style: TextStyle(
                    color: EyeColor.of(innerContext).color,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                );
              })),
          SizedBox(
            height: 10.0,
          ),
          ChangingAge(
              age: new ChangeAge(age: 25),
              child: Builder(builder: (BuildContext textContext) {
                return Column(
                  children: [
                    Text(
                      '${newAge.age}',
                      style: TextStyle(fontSize: 35.0),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          newAge.changeAge();
                        });
                      },
                      child: Icon(Icons.add),
                      backgroundColor: Colors.green,
                    ),
                  ],
                );
              })),
        ],
      ),
    );
  }
}
