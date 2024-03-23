import 'package:stacked/stacked.dart';

class CounterServices with ListenableServiceMixin {
  final ReactiveValue<int> _counter = ReactiveValue<int>(0);
  final ReactiveValue<int> _sliderIndex = ReactiveValue<int>(0);
  int get counter => _counter.value;
  int get slider => _sliderIndex.value;

  set counter(int value) {
    _counter.value = value;
    notifyListeners();
  }

  CounterService() {
    listenToReactiveValues([_counter, _sliderIndex]);
  }

  set slider(int value) {
    _sliderIndex.value = value;
    notifyListeners();
  }
}
