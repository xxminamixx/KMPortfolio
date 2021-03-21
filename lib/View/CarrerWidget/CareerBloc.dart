import 'dart:async';

class CareerBloc {

  CareerBloc() {
    _stepperIndexInputController.stream.listen((int index) {
      currentIndex = index;
      _stepperIndexOutputController.sink.add(index);
    });
  }

  int currentIndex = 0;

  final StreamController<int> _stepperIndexInputController = StreamController<int>();
  final StreamController<int> _stepperIndexOutputController = StreamController<int>();

  // input
  StreamSink<int> get stepperSink => _stepperIndexInputController.sink;

  // output
  Stream<int> get stepperStream => _stepperIndexOutputController.stream;

}