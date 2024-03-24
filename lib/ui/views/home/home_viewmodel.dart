import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/app/app.router.dart';
import 'package:ecommerceapp/services/counterservices/counter_services.dart';
import 'package:ecommerceapp/services/firebaseservices/firebase_authservices.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FutureViewModel {
  final _navigationservice = locator<NavigationService>();
  final CounterServices counterService = locator<CounterServices>();
  final _authservice = locator<FireBaseAuthServices>();

  int activeIndex = 0;
  List items = [];

  List<Widget> sliders = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.lightBlue,
    ),
  ];

  onPageChange(index) {
    counterService.slider = index;
    rebuildUi();
  }

  userLogOut() async {
    setBusy(true);
    await _authservice.logOut();
    setBusy(false);
  }

  Widget badgeText() {
    if (counterService.counter < 10) {
      return Text("${counterService.counter}");
    } else {
      return Text(
        "9+",
        style: TextStyle(fontSize: 9),
      );
    }
  }

  int get getCounter => counterService.counter;

  increment() {
    counterService.counter++;
    notifyListeners();
  }

  goToDetails() {
    _navigationservice.navigateTo(Routes.itemDetailView,
        transition: TransitionsBuilders.fadeIn);
  }

  int send = 0;

  @override
  Future futureToRun() async {}
}
