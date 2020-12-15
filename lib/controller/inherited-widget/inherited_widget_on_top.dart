import 'package:flutter/material.dart';
import 'package:our_app/controller/inherited-widget/widgets-lists/widgets_lists.dart';

class InheritedWidgetOnTop extends StatefulWidget {
  @override
  _InheritedWidgetOnTopState createState() => _InheritedWidgetOnTopState();
}

class _InheritedWidgetOnTopState extends State<InheritedWidgetOnTop> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(30.0),
      children: [
        EyeColor(
            color: Colors.deepOrange,
            child: Builder(builder: (BuildContext innerContext) {
              return GrandParent();
            })),
        SizedBox(
          height: 10.0,
        ),
        ChangingAge(
            age: new ChangeAge(age: 25),
            child: Builder(builder: (BuildContext textContext) {
              return UncleClasses();
            })),
      ],
    );
  }
}

class UncleClasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('This is a list of Uncles with different states.',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 5.0,
        ),
        FirstUncleClass(),
        SizedBox(
          height: 5.0,
        ),
        UncleClass(),
      ],
    );
  }
}

class FirstUncleClass extends StatefulWidget {
  @override
  _FirstUncleClassState createState() => _FirstUncleClassState();
}

class _FirstUncleClassState extends State<FirstUncleClass> {
  var firstUncleAge = new ChangeAge(age: 35);
  @override
  Widget build(BuildContext context) {
    return ChangingAge(
      age: new ChangeAge(age: 25),
      child: Column(
        children: [
          Text(
            'I am First Uncle, ${firstUncleAge.age} years old, change my age by add button below.',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightGreenAccent,
                backgroundColor: Colors.black),
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                firstUncleAge.changeAge();
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class UncleClass extends StatefulWidget {
  @override
  _UncleClassState createState() => _UncleClassState();
}

class _UncleClassState extends State<UncleClass> {
  var secondUncleAge = new ChangeAge(age: 30);

  Widget build(BuildContext context) {
    return ChangingAge(
      age: new ChangeAge(age: 25),
      child: Column(
        children: [
          Text(
            'I am Second Uncle, ${secondUncleAge.age} years old, change my age by add button below.',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
                backgroundColor: Colors.black),
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                secondUncleAge.changeAge();
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class GrandParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _childrenList();
  }
}

Widget _childrenList() => Column(
      children: [
        Text(
          'I am the Grandparent, although I am a Ghost now! I had two sons.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        FatherClass(),
      ],
    );

class FatherClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EyeColor(
      color: Colors.deepOrange,
      child: Column(
        children: [
          Text(
            'I am the Father. I have two brothers.',
            style: TextStyle(
                color: EyeColor.of(context).color,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
