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
              children: [
                ElevatedButton(
                  onPressed: () {
                    onIndexChanged(0);
                    viewModel.goBack();
                    // Change index to 0 (Home)
                  },
                  child: Text("Home"),
                ),
                ElevatedButton(
                  onPressed: () {
                    onIndexChanged(2);
                    viewModel.goBack(); // Change index to 2 (Favorite)
                  },
                  child: Text("Favorite"),
                ),
                ElevatedButton(
                  onPressed: () {
                    onIndexChanged(3);
                    viewModel.goBack(); // Change index to 3 (Profile)
                  },
                  child: Text("Profile"),
                ),
                ElevatedButton(
                  onPressed: () {
                    onIndexChanged(1);
                    viewModel.goBack(); // Change index to 1 (Search)
                  },
                  child: Text("Search"),
                ),
              ],
            ),
          );
        });
  }
}
