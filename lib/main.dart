import 'package:demo_app/containers/best_gadget_container.dart';
import 'package:demo_app/containers/janmastami.dart';
import 'package:demo_app/containers/orderabove.dart';
import 'package:demo_app/containers/shopbysports.dart';
import 'package:demo_app/pages/hamburgerpage.dart';
import 'package:demo_app/pages/login.dart';
import 'package:demo_app/pages/splashscreen.dart';
import 'package:demo_app/utils/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      // home: MyCustomForm(),
      home: SplaceScreen(),
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 211, 223, 234),
                  Color.fromARGB(255, 100, 197, 239),
                  Color.fromARGB(255, 0, 135, 245)
                ])),
            child: AppBar(
                //toolbarHeight: 40,
                title: const Text(
                  "Shopify",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      icon: const Icon(Icons.login_rounded)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined)),
                ],
                backgroundColor: Colors.transparent
                //backgroundColor: const Color.fromARGB(255, 69, 106, 253),
                ),
          ),
        ),
        drawer: const Hamburgerpage(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            hintText: 'Search For Products, Brands and More',
                            hintStyle: const TextStyle(color: Colors.black38),
                            contentPadding:
                                const EdgeInsets.only(top: 10, left: 5)),
                      ))
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: SizedBox(
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
                                GestureDetector(
                                  child: const Text(
                                    "Offer Zone",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                )
                              ],
                            )),
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
              ),
              const Row(
                children: [Janmastami()],
              ),
              const Row(
                children: [OrderAboveContainer()],
              ),
              const Row(
                children: [ShopBySportsContainer()],
              )
            ],
          ),
        ));
  }
}
