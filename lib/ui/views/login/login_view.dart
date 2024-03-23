import 'package:ecommerceapp/ui/views/login/login_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewModel(),
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
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Form(
                    key: viewModel.formkey,
                    child: Column(
                      children: [
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
                            controller: viewModel.password,
                            validator: (value) {
                              return viewModel.validatePassword(value);
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
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 170, bottom: 20),
                          child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Forget Password!",
                                style: TextStyle(color: Colors.blue[400]),
                              )),
                        ),
                        SizedBox(
                          height: 20,
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
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.5),
                              )),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            viewModel.goToSignup();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't Have An Account?"),
                              Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.blue[400]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("-------Login With-------"),
                  SizedBox(
                    height: 20,
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
                          height: 45,
                          width: 320,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.facebook_outlined,
                                size: 30,
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Text("Login With FaceBook")
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        customBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 45,
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
                              Text("Login With Google")
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
