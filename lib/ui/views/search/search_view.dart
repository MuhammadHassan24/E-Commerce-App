import 'package:ecommerceapp/ui/views/search/search_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SeacrhView extends StatelessWidget {
  const SeacrhView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SeacrhViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold();
        });
  }
}
