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
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemBuilder: (con, ind) {
                  return GestureDetector(
                      onTap: () => viewModel.goToDetails(),
                      child: GridContainer());
                }),
          );
        });
  }
}
