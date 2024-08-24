import 'package:demo_app/main.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        decoration: const BoxDecoration(color: Colors.blue),
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyCustomForm()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 13),
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/images/close.png'),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Text(
                        "Shopsify",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                width: screenWidth,
                height: screenWidth * 1.95,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        child: Text(
                          "Login For Best Experience",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(
                          child: Text(
                        "Enter Your Phone Number To Continue",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              hintText: 'Phone Number',
                              hintStyle: const TextStyle(color: Colors.black38),
                              contentPadding:
                                  const EdgeInsets.only(top: 10, left: 5)),
                          keyboardType: const TextInputType.numberWithOptions(),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
