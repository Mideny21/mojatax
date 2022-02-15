import 'package:flutter/material.dart';

import 'OwnersLoginPage.dart';
import 'SalesLoginPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      "mojatax",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          letterSpacing: 8,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    ExpansionTile(
                      expandedCrossAxisAlignment: CrossAxisAlignment.center,
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      collapsedIconColor: Colors.black,
                      collapsedTextColor: Colors.black,
                      backgroundColor: Colors.yellow,
                      collapsedBackgroundColor: Colors.yellow,
                      title: const Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          "LOGIN AS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OwnersLoginPage(),
                              ),
                            );
                          },
                          child: Container(
                              height: 50,
                              child: const Text(
                                "Owner",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SalesLoginPage(),
                              ),
                            );
                          },
                          child: const SizedBox(
                              height: 50,
                              child: Text(
                                "Sales Rep.",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
