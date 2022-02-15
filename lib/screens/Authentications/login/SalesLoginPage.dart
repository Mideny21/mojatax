import 'package:flutter/material.dart';
import 'package:mojatax/screens/Authentications/login/otp_screen.dart';

import '../../main_page.dart';

class SalesLoginPage extends StatefulWidget {
  const SalesLoginPage({Key? key}) : super(key: key);

  @override
  _SalesLoginPageState createState() => _SalesLoginPageState();
}

class _SalesLoginPageState extends State<SalesLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Center(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
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
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(color: Colors.yellow),
                          child: Center(
                            child: Stack(
                              children: const [
                                Center(
                                    child: Text(
                                  "Sales Rep.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                                Positioned(
                                  right: 15,
                                  top: 2.5,
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 45,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.yellow[300],
                            filled: true,
                            hintText: "Enter Phone Number",
                            contentPadding: EdgeInsets.all(12.0),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(),
                            errorBorder: UnderlineInputBorder(),
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),

                            // suffixIcon: Icon(
                            //   Icons.check_circle,
                            // ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            // enabledBorder: UnderlineInputBorder(
                            //   borderSide: BorderSide(color: Color(0xFF6200EE)),
                            // ),
                          ),
                          validator: (value) {
                            // if (value.trim().length <= 0) {
                            if (value!.isEmpty || value.length < 3) {
                              return 'Tin Number is required';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OtpScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(14)),
                              textStyle: MaterialStateProperty.all(TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700))),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
