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
                          child: Center(
                            child: Icon(
                              Icons.person,
                              size: 50,
                            ),
                          ),
                        ),
                        Positioned(
                            child: IconButton.filledTonal(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.amber)),
                                padding: EdgeInsets.only(left: 2),
                                onPressed: () {},
                                icon: Icon(Icons.camera_alt_rounded)))
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    viewModel.goToEditPage();
                  },
                  customBorder: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                    child: Center(
                        child: Text(
                      "Edit",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
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
