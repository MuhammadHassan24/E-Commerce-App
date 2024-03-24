import 'package:ecommerceapp/app/app.locator.dart';
import 'package:ecommerceapp/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FavoriteViewModel extends BaseViewModel {
  final _navigationservice = locator<NavigationService>();
  goToDetails() {
    _navigationservice.navigateTo(Routes.itemDetailView);
  }
}

class GridContainer extends ViewModelWidget<FavoriteViewModel> {
  @override
  Widget build(BuildContext context, FavoriteViewModel viewModel) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 30,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Product",
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  "Price",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.blue),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add))))
        ],
      ),
    );
  }
}
