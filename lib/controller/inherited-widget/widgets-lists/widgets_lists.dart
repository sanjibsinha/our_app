import 'package:flutter/material.dart';

class EyeColor extends InheritedWidget {
  const EyeColor({
    Key key,
    @required this.color,
    @required Widget child,
  })  : assert(color != null),
        assert(child != null),
        super(key: key, child: child);

  final Color color;

  static EyeColor of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<EyeColor>();
  }

  @override
  bool updateShouldNotify(EyeColor old) => color != old.color;
}

class ChangingAge extends InheritedWidget {
  const ChangingAge({
    Key key,
    @required this.age,
    @required Widget child,
  })  : assert(age != null),
        super(key: key, child: child);

  final ChangeAge age;

  static ChangingAge of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ChangingAge>();
  }

  @override
  bool updateShouldNotify(ChangingAge old) => age != old.age;
}

class ChangeAge {
  int age;
  ChangeAge({this.age});
  void changeAge() {
    age += 5;
  }
}
