import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/services/counterservices/counter_services.dart';
import 'package:stacked/stacked.dart';

class AddCardViewModel extends BaseViewModel {
  final CounterServices counterService = locator<CounterServices>();

  int fetch = 0;
}
