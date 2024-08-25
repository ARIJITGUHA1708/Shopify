import 'package:demo_app/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username = TextEditingController();
  final password = TextEditingController();
  var usernameString;
  var passwordString;
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
                        "Enter Email and Password To Continue",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: TextField(
                          controller: username,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              hintText: 'Email',
                              hintStyle: const TextStyle(color: Colors.black38),
                              contentPadding:
                                  const EdgeInsets.only(top: 10, left: 5)),
                          //keyboardType: const TextInputType.numberWithOptions(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: TextField(
                          controller: password,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              hintText: 'Password',
                              hintStyle: const TextStyle(color: Colors.black38),
                              contentPadding:
                                  const EdgeInsets.only(top: 10, left: 5)),
                          //keyboardType: const TextInputType.numberWithOptions(),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                            onPressed: () async {
                              setState(() {
                                usernameString = username.text;
                                passwordString = password.text;
                              });
                              try {
                                var response = await http.post(Uri.parse(
                                    //IT IS A DUMMY API FROM DUMMYJSON WEBSITE
                                    //THE USERNAME SHOULD BE "EMILYS" AND PASSWORD SHOULD BE "EMILYSPASS"
                                    'https://dummyjson.com/auth/login'), body: {
                                  "username": "$usernameString",
                                  "password": "$passwordString"
                                });
                                print(response.body);
                              } catch (error) {
                                print(error);
                              }
                            },
                            child: const Text("Submit")),
                      ),
                      Text("Username:$usernameString"),
                      Text("Password:$passwordString")
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
