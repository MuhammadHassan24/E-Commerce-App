import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/ui/views/home/home_viewmodel.dart';
import 'package:ecommerceapp/widget/drawer/custom_drawer.dart';
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
                key: PageStorageKey("Stoage_key"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          child: CarouselSlider(
                            key: PageStorageKey("Stoage_key"),
                            options: CarouselOptions(
                              height: 160,
                              onPageChanged: (index, reason) {
                                viewModel.onPageChange(index);
                              },
                              enlargeCenterPage: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                              viewportFraction: 0.8,
                            ),
                            items: viewModel.sliders,
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            child: Row(
                              children: [
                                for (int i = 0;
                                    i < viewModel.sliders.length;
                                    i++)
                                  Container(
                                      margin: EdgeInsets.only(right: 10),
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              viewModel.counterService.slider ==
                                                      i
                                                  ? Colors.blue[400]
                                                  : Colors.white))
                              ],
                            ))
                      ],
                    ),
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
                                offset: Offset(0, 5),
                              ),
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
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
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10, bottom: 8.5),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: GestureDetector(
                                                  onTap: () =>
                                                      viewModel.goToDetails(),
                                                  child: Card(
                                                    child: SizedBox(
                                                      width: 125,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              height: 100,
                                                              color: Colors
                                                                  .grey[400],
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            RichText(
                                                                text: TextSpan(
                                                                    text: "Rs.",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            12),
                                                                    children: <TextSpan>[
                                                                  TextSpan(
                                                                      text:
                                                                          "${ind.toString()}",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              15))
                                                                ])),
                                                            Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: InkWell(
                                                                  onTap: () {
                                                                    viewModel
                                                                        .increment();
                                                                  },
                                                                  customBorder:
                                                                      const CircleBorder(),
                                                                  child: const Icon(
                                                                      Icons
                                                                          .add)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          })),
                                ],
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.5, top: 15),
                      child: Text(
                        "For You",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GridView.builder(
                      key: PageStorageKey("Stoage_key"),
                      itemCount: 10,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => viewModel.goToDetails(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Material(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          height: 130,
                                          width: 120,
                                          color: Colors.grey,
                                          child: Center(
                                              child: Text(
                                            index.toString(),
                                            style: TextStyle(fontSize: 20),
                                          )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Product",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: RichText(
                                          text: TextSpan(
                                              text: "\$.",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                              children: <TextSpan>[
                                            TextSpan(
                                                text: "100",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17))
                                          ])),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                      ),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: InkWell(
                                            onTap: () {},
                                            customBorder: const CircleBorder(),
                                            child: const Icon(Icons.add)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
