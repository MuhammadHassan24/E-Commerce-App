import 'package:ecommerceapp/ui/views/favorite/favorite_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FavoriteView extends StatelessWidget {
  final dynamic num;
  const FavoriteView({super.key, this.num});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => FavoriteViewModel(),
        builder: (context, viewModel, child) {
          return GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (con, ind) {
                return Container();
              });
        });
  }
}
