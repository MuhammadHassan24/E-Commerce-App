import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/app/app.router.dart';
import 'package:ecommerceapp/services/firebaseservices/firebase_authservices.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationservice = locator<NavigationService>();
  final _authservice = locator<FireBaseAuthServices>();
  final formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  userLogin() async {
    await _authservice.loginUser(email.text, password.text);
    email.clear();
    password.clear();
    return goToNavbar();
  }

  submit() {
    if (formkey.currentState!.validate()) {
      return userLogin();
    }
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

  String? validatePassword(value) {
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      {
        return null;
      }
    }
  }

  goToSignup() {
    _navigationservice.navigateToSignUpView();
  }

  goToNavbar() {
    _navigationservice.replaceWithNavbarView();
    rebuildUi();
  }
}
