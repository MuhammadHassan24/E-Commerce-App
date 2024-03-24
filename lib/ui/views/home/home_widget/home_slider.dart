import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeSlider extends ViewModelWidget<HomeViewModel> {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Stack(
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
                for (int i = 0; i < viewModel.sliders.length; i++)
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: viewModel.counterService.slider == i
                              ? Colors.blue[400]
                              : Colors.white))
              ],
            ))
      ],
    );
  }
}
