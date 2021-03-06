import 'package:flutter/cupertino.dart';
import 'package:km_portfolio/View/CarrerWidget/CareerBloc.dart';

class CareerBlocProvider extends InheritedWidget {
  const CareerBlocProvider(Widget child, { Key? key }) : super(key: key, child: child);

  CareerBloc get bloc => CareerBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static CareerBlocProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CareerBlocProvider>();
  }
}