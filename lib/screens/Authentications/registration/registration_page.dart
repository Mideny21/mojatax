import 'package:flutter/material.dart';
import 'package:mojatax/widgets/registration_tab.dart';
import 'package:badges/badges.dart';
import 'attachements.dart';
import 'forms.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return RestrationTab(
      tabs: [
        Tab(
          text: "FORM",
          icon: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            child: const Center(
              child: Text(
                "1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),

        Tab(
          text: "ATTACHMENT",
          icon: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            child: const Center(
              child: Text(
                "2",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        // Tab(text: 'My Details'),
      ],
      children: const [RegistationForm(), AttachmentsForm()],
    );
  }
}
