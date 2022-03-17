import 'package:flutter/material.dart';

class DesktopDetails extends StatefulWidget {
  const DesktopDetails({Key? key}) : super(key: key);

  @override
  State<DesktopDetails> createState() => _DesktopDetailsState();
}

class _DesktopDetailsState extends State<DesktopDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("MOJA TAX",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[800],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    DesktopDetail(text: "Name", icon: Icons.person),
                    DesktopDetail(text: "Address", icon: Icons.contact_phone),
                    DesktopDetail(text: "Email", icon: Icons.email),
                    DesktopDetail(text: "Mobile", icon: Icons.phone),
                    DesktopDetail(
                        text: "TIN", icon: Icons.format_list_numbered),
                    DesktopDetail(text: "VRN", icon: Icons.ac_unit_sharp),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    ));
  }
}

class DesktopDetail extends StatelessWidget {
  DesktopDetail({Key? key, this.text, this.icon}) : super(key: key);
  String? text;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow,
                shape: BoxShape.rectangle),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [Icon(icon!), Text(text!)],
              ),
            )),
        const SizedBox(width: 20),
        Expanded(
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5.0),
              ),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: "",
              fillColor: Colors.white,
              filled: true,
              contentPadding: const EdgeInsets.all(12.0),
            ),
            validator: (value) {
              // if (value.trim().length <= 0) {
              if (value!.isEmpty || value.length < 3) {
                return 'Tin number is required';
              }
              return null;
            },
          ),
        ),
        const SizedBox(width: 20),
      ]),
    );
  }
}
