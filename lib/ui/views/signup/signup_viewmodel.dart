import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/app/app.router.dart';
import 'package:ecommerceapp/services/firebaseservices/firebase_authservices.dart';
import 'package:ecommerceapp/services/firebaseservices/firebase_storeservices.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigationservice = locator<NavigationService>();
  final _authService = locator<FireBaseAuthServices>();
  final _firestoreService = locator<FireBaseDataStoreServices>();
  final formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final conformpass = TextEditingController();
  final name = TextEditingController();

  createUser() async {
    setBusy(true);
    await _authService.createUser(email.text, password.text);
    name.clear();
    email.clear();
    password.clear();
    setBusy(false);
  }

  addUseData() async {
    setBusy(true);
    await _firestoreService.createUserData(
        name.text, email.text, password.text);
    await createUser();
    goToNavbar();
    print("Create pass");
    name.clear();
    email.clear();
    password.clear();
    setBusy(false);
  }

  String? emailValidation(value) {
    RegExp validEmail = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value!.isEmpty) {
      return "Enter Your Email";
    } else if (!validEmail.hasMatch(value)) {
      return "Enter Valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (value.length == 8) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  submit() {
    if (formkey.currentState!.validate()) {
      return addUseData();
    }
  }

  goToLogin() {
    _navigationservice.navigateToLoginView();
  }

  goToHome() {
    _navigationservice.navigateToHomeView();
  }

  goToNavbar() {
    _navigationservice.replaceWithNavbarView();
    rebuildUi();
  }
}
