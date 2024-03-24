import 'package:ecommerceapp/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeCard extends ViewModelWidget<HomeViewModel> {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () => viewModel.goToDetails(),
        child: Card(
          child: SizedBox(
            width: 125,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Rs.",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: <TextSpan>[
                        TextSpan(
                            text: "${"2"}",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15))
                      ])),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                        onTap: () {
                          viewModel.increment();
                        },
                        customBorder: const CircleBorder(),
                        child: const Icon(Icons.add)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
