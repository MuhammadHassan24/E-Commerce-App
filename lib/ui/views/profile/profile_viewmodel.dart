import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationservice = locator<NavigationService>();
  goToEditPage() {
    _navigationservice.navigateTo(Routes.editView);
  }
}
