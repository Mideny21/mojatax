import 'package:flutter/material.dart';
import 'package:mojatax/screens/main_page.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Driving Licenses",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.yellow),
        ),
        elevation: 2,
        titleSpacing: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "mojatax",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 8,
                  color: Colors.black),
            ),
            const SizedBox(height: 25),
            OTPTextField(
              length: 5,
              width: MediaQuery.of(context).size.width - 25,
              fieldWidth: 58,
              otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Colors.grey.withOpacity(0.8),
                  borderColor: Colors.white),
              style: TextStyle(fontSize: 12, color: Colors.white),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              // onCompleted: (pin) {
              //   setState(() {
              //     // smsCode = pin;
              //   });
              // },
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
              child: Text(
                "AUTHENTICATE",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700))),
            ),
          ],
        ),
      ),
    );
  }
}
