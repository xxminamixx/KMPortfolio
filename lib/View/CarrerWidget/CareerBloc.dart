import 'dart:async';
import 'package:rxdart/rxdart.dart';

class CareerBloc {

  CareerBloc() {
    // do something
  }

  final BehaviorSubject<int> _stepperController = BehaviorSubject<int>.seeded(0);

  // input
  StreamSink<int> get stepperSink => _stepperController.sink;

  // output
  Stream<int> get stepperStream => _stepperController.stream;

}