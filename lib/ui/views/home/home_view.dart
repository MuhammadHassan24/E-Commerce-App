import 'package:ecommerceapp/ui/views/home/home_viewmodel.dart';
import 'package:ecommerceapp/ui/views/home/home_widget/home_card.dart';
import 'package:ecommerceapp/ui/views/home/home_widget/home_itemcard.dart';
import 'package:ecommerceapp/ui/views/home/home_widget/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                key: const PageStorageKey("Stoage_key"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeSlider(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 12.5, right: 12.5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            height: 245,
                            width: double.infinity,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Flash Sale",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                      height: 190,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 6,
                                          itemBuilder: (con, ind) {
                                            return const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10, bottom: 8.5),
                                                child: HomeCard());
                                          })),
                                ],
                              ),
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 22.5, top: 15),
                      child: Text(
                        "For You",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(12), child: HomeItemCard()),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
