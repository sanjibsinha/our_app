import 'package:flutter/material.dart';

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

class InheritedWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewWidget();
  }
}

Widget _listViewWidget() => ListView(
      padding: EdgeInsets.all(40.0),
      children: [
        ClassWithoutNestedClass(),
        SizedBox(
          height: 5.0,
        ),
        ClassWithNestedClass(),
        SizedBox(
          height: 5.0,
        ),
        //CounterClass(),
      ],
    );

class OurCounter {
  int ourCounter;
  OurCounter({this.ourCounter});
  void raiseCounter() {
    ourCounter += 1;
  }
}

class CounterClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OurCounter counter = OurCounterSupplier.of(context).ourCounter;
    return Text(
      'Our Counter value : ${counter.ourCounter}',
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

class OurCounterSupplier extends InheritedWidget {
  final OurCounter ourCounter;
  final Widget child;
  OurCounterSupplier({
    this.ourCounter,
    this.child,
  }) : super(child: child);
  static OurCounterSupplier of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: OurCounterSupplier);

  @override
  bool updateShouldNotify(covariant OurCounterSupplier oldWidget) {
    return (ourCounter != oldWidget.ourCounter) ? true : false;
  }
}

class ClassWithoutNestedClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "It has no nested class. The tree root ends here!",
      style: Theme.of(context).textTheme.headline6,
    );
  }
}

class ClassWithNestedClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "This class has a nested class, where we need to change the value without redrawing other classes.",
          style: Theme.of(context).textTheme.headline6,
        ),
        CounterClass(),
      ],
    );
  }
}
