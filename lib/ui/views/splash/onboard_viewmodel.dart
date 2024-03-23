import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardViewModel extends BaseViewModel {
  final _navigationservice = locator<NavigationService>();
  goToLogin() {
    _navigationservice.navigateToLoginView();
  }

  goToSignup() {
    _navigationservice.navigateToSignUpView();
  }
}
