import 'package:ecommerceapp/ui/views/profileedit/edit_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => EditViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(),
          );
        });
  }
}
