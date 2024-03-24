import 'package:ecommerceapp/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeItemCard extends ViewModelWidget<HomeViewModel> {
  const HomeItemCard({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 260,
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16),
        itemBuilder: (con, ind) {
          return GestureDetector(
            onTap: () => viewModel.goToDetails(),
            child: Container(
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 150,
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
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.add))))
                ],
              ),
            ),
          );
        });
  }
}
