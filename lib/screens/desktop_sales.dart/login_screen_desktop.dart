import 'package:flutter/material.dart';

class DesktopLoginScreen extends StatefulWidget {
  const DesktopLoginScreen({Key? key}) : super(key: key);

  @override
  State<DesktopLoginScreen> createState() => _DesktopLoginScreenState();
}

class _DesktopLoginScreenState extends State<DesktopLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffFCCC08),
          Color(0xffAC9028),
          Color(0xff504C4C),
        ])),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("MOJATAX",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 45)),
          Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/frontimage.png",
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.8),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          elevation: 5.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Center(
                                      child: Text(
                                    "Login as",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30),
                                  )),
                                  Icon(Icons.arrow_downward_rounded, size: 30)
                                ]),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Material(
                          elevation: 5.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                      child: Text(
                                    "Password",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30),
                                  )),
                                ]),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                            SizedBox(width: 5),
                            Text("Register Now",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
