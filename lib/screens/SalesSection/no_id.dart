import 'package:flutter/material.dart';
import 'package:mojatax/widgets/custom_appBar.dart';

import 'payments.dart';

class NoId extends StatefulWidget {
  const NoId({Key? key}) : super(key: key);

  @override
  _NoIdState createState() => _NoIdState();
}

class _NoIdState extends State<NoId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "No ID",
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.yellowAccent),
        ),
        elevation: 2,
        titleSpacing: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buyer's NEC Number",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Enter Name",
                      fillColor: Colors.grey.withOpacity(0.9),
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
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buyer's Email",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Enter Email",
                      fillColor: Colors.grey.withOpacity(0.9),
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
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buyer's Mobile No.",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Enter phone",
                      fillColor: Colors.grey.withOpacity(0.9),
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
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Payments(),
                              ),
                            );
                          },
                          child: Text(
                            "Sales",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
