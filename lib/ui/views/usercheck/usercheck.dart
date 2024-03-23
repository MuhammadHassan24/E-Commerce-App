import 'package:ecommerceapp/ui/navbar/navbar_view.dart';
import 'package:ecommerceapp/ui/views/splash/onboard_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserCheck extends StatelessWidget {
  const UserCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NavbarView();
          } else {
            return OnBoardView();
          }
        });
  }
}
