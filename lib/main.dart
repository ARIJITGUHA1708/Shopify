import 'package:demo_app/containers/best_gadget_container.dart';
import 'package:demo_app/utils/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: MyCustomForm(),
    );
  }
}

//Defining a custum widget
class MyCustomForm extends StatefulWidget {
  @override
  State<MyCustomForm> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 230, 248),
        appBar: AppBar(
          title: const Text(
            "",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          backgroundColor: const Color.fromARGB(255, 80, 61, 250),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        margin: const EdgeInsets.only(left: 10, right: 5),
                        child: Image.asset('assets/images/flipkart-logo4.png'),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        margin: const EdgeInsets.only(right: 10, left: 5),
                        child: Image.asset('assets/images/login.png'),
                      ),
                      Container(
                          height: 30,
                          margin: const EdgeInsets.only(left: 5, right: 10),
                          child: Image.asset('assets/images/shopping-cart.png'))
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 164, 3, 3))),
                          hintText: 'Search Fow Products, Brands and More',
                          contentPadding:
                              const EdgeInsets.only(top: 25, left: 5)),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                  height: 45,
                                  width: 45,
                                  child: Image.asset(
                                      'assets/images/top-offer.png')),
                              Container(
                                child: const Text(
                                  "Offer Zone",
                                  style: TextStyle(fontSize: 10),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                          height: 65,
                          width: 65,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child:
                                    Image.asset('assets/images/smartphone.png'),
                              ),
                              Container(
                                child: const Text("Mobiles",
                                    style: TextStyle(fontSize: 10)),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 65,
                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.asset('assets/images/brand.png'),
                            ),
                            Container(
                              child: const Text("Fasion",
                                  style: TextStyle(fontSize: 10)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/images/devices.png'),
                            ),
                            Container(
                              child: const Text(
                                "Smart Devices",
                                style: TextStyle(fontSize: 9),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                              child:
                                  Image.asset('assets/images/responsive.png'),
                            ),
                            Container(
                              child: const Text(
                                "Electronics",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset('assets/images/kitchen.png'),
                            ),
                            Container(
                              child: const Text("Home",
                                  style: TextStyle(fontSize: 10)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                  'assets/images/health-insurance.png'),
                            ),
                            Container(
                                child: const Text(
                              "Insurance",
                              style: TextStyle(fontSize: 10),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: Image.asset('assets/images/furniture.png'),
                            ),
                            const Text(
                              "Furniture",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              const Row(
                children: [ImageCard()],
              ),
              const Row(
                children: [BestGadgetContainer()],
              )
            ],
          ),
        ));
  }
}
