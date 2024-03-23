import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/app/app.router.dart';
import 'package:ecommerceapp/services/counterservices/counter_services.dart';
import 'package:ecommerceapp/ui/views/favorite/favorite_view.dart';
import 'package:ecommerceapp/ui/views/home/home_view.dart';
import 'package:ecommerceapp/ui/views/profile/profile_view.dart';
import 'package:ecommerceapp/ui/views/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NavbarViewModel extends IndexTrackingViewModel {
  final navigationservice = locator<NavigationService>();
  final CounterServices counterService = locator<CounterServices>();

  getView(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return SeacrhView();
      case 2:
        return FavoriteView();
      case 3:
        return ProfileView();
      default:
        return HomeView();
    }
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [counterService];

  int get getCounter => counterService.counter;

  increment() {
    counterService.counter++;

    notifyListeners();
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

  goToAddcard() async {
    await navigationservice.navigateTo(Routes.addCardView,
        arguments: getCounter);
  }

  int send = 0;
}
