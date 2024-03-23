import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceapp/widget/custom_snackbar.dart';

class FireBaseDataStoreServices {
  final CollectionReference _fireStore =
      FirebaseFirestore.instance.collection("users");
  createUserData(String name, String email, dynamic password) async {
    final data = {"name": name, "email": email, "password": password};

    await _fireStore
        .add(data)
        .then((value) => print("User Added"))
        .catchError((e) => CustomSnackBar(message: e.toString()));
  }
}
