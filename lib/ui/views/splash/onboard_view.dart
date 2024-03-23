import 'package:ecommerceapp/ui/views/splash/onboard_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => OnBoardViewModel(),
        builder: (contxet, viewModel, child) {
          return SafeArea(
              child: Scaffold(
            body: Container(
              decoration: BoxDecoration(color: Colors.transparent),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 230,
                    ),
                    Text(
                      "Welcome To This\n E-Commerce App",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 45,
                        width: 200,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.5)),
                                backgroundColor: Colors.blue[400]),
                            onPressed: () {
                              viewModel.goToLogin();
                            },
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ))),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        height: 45,
                        width: 200,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.5)),
                                side: BorderSide(
                                    color: Color(0xff42a5f5), width: 2),
                                backgroundColor: Colors.white),
                            onPressed: () {
                              viewModel.goToSignup();
                            },
                            child: Text(
                              "SigUp",
                              style: TextStyle(
                                  color: Colors.blue[400], fontSize: 20),
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "SigUp With",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 25,
                              child: Image.asset(
                                "assets/image/google.png",
                                fit: BoxFit.fill,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ));
        });
  }
}
