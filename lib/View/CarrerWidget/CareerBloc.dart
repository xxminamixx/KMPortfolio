import 'dart:async';

class CareerBloc {

  int currentIndex = 0;

  final _stepperIndexInputController = StreamController<int>();
  final _stepperIndexOutputController = StreamController<int>();

  // input
  StreamSink<void> get stepperSink => _stepperIndexInputController.sink;

  // output
  Stream<int> get stepperStream => _stepperIndexOutputController.stream;

  CareerBloc() {
    _stepperIndexInputController.stream.listen((index) {
      this.currentIndex = index;
      _stepperIndexOutputController.sink.add(index);
    });
  }

}