import 'package:ecommerceapp/ui/views/profile/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 60,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Name",
                        style: TextStyle(fontSize: 22),
                      ),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 2))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text(
                        "Location",
                        style: TextStyle(fontSize: 22),
                      ),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 2))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text(
                        "Name",
                        style: TextStyle(fontSize: 22),
                      ),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 2))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text(
                        "Number",
                        style: TextStyle(fontSize: 22),
                      ),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 2))),
                    ),
                  ],
                ),
              )
            ],
          ));
        });
  }
}
