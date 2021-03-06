import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:our_app/controller/inherited-widget/widgets-lists/widgets_lists.dart';

import 'building_inherited_widget.dart';

class RebuildingInheritedWidget extends StatefulWidget {
  @override
  _RebuildingInheritedWidgetState createState() =>
      _RebuildingInheritedWidgetState();
}

class _RebuildingInheritedWidgetState extends State<RebuildingInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Family Tree',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
      ),
      body: GrandParent(),
    );
  }
}

class GrandParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _childrenList();
  }
}

Widget _childrenList() => ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        Text(
          'I am the Grandparent, although I am a Ghost now! I had two sons.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        FatherClass(),
        SizedBox(
          height: 10.0,
        ),
        BuildingInheritedWidget(),
        SizedBox(
          height: 10.0,
        ),
        UncleClass(),
      ],
    );

class FatherClass extends GrandParent {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Father has one child and he was born with green eyes. However ' +
                'you can change his age by clicking the add button below.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.blue),
          ),
        ),
        IAmTheOnlyChildOfMyFather(),
      ],
    ));
  }
}

class UncleClass extends GrandParent {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Uncle has red eye!',
          style: TextStyle(fontSize: 25.0, color: Colors.red),
        ),
      ),
    );
  }
}

class IAmTheOnlyChildOfMyFather extends StatefulWidget {
  @override
  _IAmTheOnlyChildOfMyFatherState createState() =>
      _IAmTheOnlyChildOfMyFatherState();
}

class _IAmTheOnlyChildOfMyFatherState extends State<IAmTheOnlyChildOfMyFather> {
  var age = new ChangeAge(age: 55);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          EyeColor(
            color: Colors.green,
            child: Builder(
              builder: (BuildContext innerContext) {
                Color eyeColor = EyeColor.of(innerContext).color;
                return Column(
                  children: [
                    Text(
                      'I am the only child of my parents.' +
                          ' I have green eyes like a Frog. So the text is green.' +
                          ' Click the button to raise my age.',
                      style: TextStyle(
                          color: eyeColor,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                );
              },
            ),
          ),
          ChangingAge(
              age: new ChangeAge(age: 55),
              child: Builder(builder: (BuildContext innerContext) {
                return Column(children: [
                  Text(
                    'Age : ${age.age}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        age.changeAge();
                      });
                    },
                    child: Icon(Icons.add),
                    backgroundColor: Colors.green,
                  ),
                ]);
              })),
        ],
      ),
    );
  }
}
