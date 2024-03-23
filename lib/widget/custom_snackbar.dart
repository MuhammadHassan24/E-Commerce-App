import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;

  const CustomSnackBar({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      padding: EdgeInsets.all(10),
      content: Text(message),
      backgroundColor: Colors.grey,
      shape: BeveledRectangleBorder(),
    );
  }
}
