// Inside CustomDrawer class

import 'package:ecommerceapp/widget/drawer/drawerviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onIndexChanged; // Callback function

  const CustomDrawer({super.key, required this.onIndexChanged});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => DrawerViewModel(),
        builder: (context, viewModel, child) {
          return Drawer(
            width: 280,
            child: Column(
              children: [],
            ),
          );
        });
  }
}
