import 'package:ecommerceapp/ui/views/addcard/addcard_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddCardView extends StatelessWidget {
  final dynamic data;
  const AddCardView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AddCardViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                elevation: 1,
                title: Text("Add Cart"),
              ),
              body: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  ListView.builder(
                      itemCount: 1,
                      itemBuilder: (con, ind) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          height: 145,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 12),
                                height: 120,
                                width: 120,
                                color: Colors.black12,
                                child: Text(ind.toString()),
                              ),
                              Positioned(
                                left: 130,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Description",
                                        style: TextStyle(
                                          fontSize: 17.5,
                                        ),
                                      ),
                                      Text(
                                        "Price",
                                        style: TextStyle(
                                          fontSize: 17.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 315,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete_rounded,
                                    size: 35,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 100,
                                left: 280,
                                child: Container(
                                  width: 120,
                                  height: 35,
                                  // color: Colors.black12,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.remove)),
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            size: 25,
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                  // Positioned(
                  //     bottom: 20,
                  //     child: Container(
                  //       height: 45,
                  //       width: 250,
                  //       child: ElevatedButton(
                  //           onPressed: () {}, child: Text("Procce")),
                  //     ))
                ],
              ),
            ),
          );
        });
  }
}
