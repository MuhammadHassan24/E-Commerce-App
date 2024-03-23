import 'package:ecommerceapp/ui/views/signup/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
              child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: viewModel.formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 290,
                          child: TextFormField(
                            controller: viewModel.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Your Name";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff42a5f5))),
                              labelText: "Name",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18.5,
                        ),
                        SizedBox(
                          width: 290,
                          child: TextFormField(
                            controller: viewModel.email,
                            validator: (value) {
                              return viewModel.emailValidation(value);
                            },
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff42a5f5))),
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        SizedBox(
                          height: 18.5,
                        ),
                        SizedBox(
                          width: 290,
                          child: TextFormField(
                            controller: viewModel.password,
                            validator: (value) {
                              return viewModel.validatePassword(value!);
                            },
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff42a5f5))),
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.5)),
                                  backgroundColor: Color(0xff42a5f5)),
                              onPressed: () {
                                viewModel.submit();
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.5),
                              )),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            viewModel.goToLogin();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already Have An Account?"),
                              Text(
                                "Login",
                                style: TextStyle(color: Colors.blue[400]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("-------Sign Up With-------"),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        customBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 50,
                          width: 320,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 18.5,
                                  child:
                                      Image.asset("assets/image/google.png")),
                              SizedBox(
                                width: 60,
                              ),
                              Text("Sign Up With Google")
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ));
        });
  }
}
