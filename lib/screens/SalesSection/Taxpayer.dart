import 'package:flutter/material.dart';
import 'package:mojatax/widgets/custom_appBar.dart';

import 'payments.dart';

class TaxPayer extends StatefulWidget {
  const TaxPayer({Key? key}) : super(key: key);

  @override
  _TaxPayerState createState() => _TaxPayerState();
}

class _TaxPayerState extends State<TaxPayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Taxpayer Identification",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buyer's TIN",
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
                      hintText: "Enter TIN",
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
                    "Buyer's Name",
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
                    "Buyer's VRN",
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
                      hintText: "Enter VRN",
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
                    "Buyer's Address",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Enter Address",
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
                          style: TextStyle(fontSize: 18, color: Colors.white),
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
                            style: TextStyle(fontSize: 18, color: Colors.white),
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
