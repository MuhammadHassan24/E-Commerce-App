import 'package:ecommerceapp/widget/custom_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> createUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      CustomSnackBar(message: e.toString());
    }
  }

  Future<void> loginUser(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      CustomSnackBar(message: e.toString());
    }
  }

  Future<void> logOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      CustomSnackBar(message: e.toString());
    }
  }
}
