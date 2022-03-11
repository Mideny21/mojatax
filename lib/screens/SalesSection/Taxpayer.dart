import 'package:flutter/material.dart';
import 'package:mojatax/screens/desktop_sales.dart/sales_desktop.dart';
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
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 700;
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

      /* START OF DESKTOP VERSION */

      body: isDesktop(context)
          ? Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's TIN",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 2),
                            TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                suffixIcon: IconButton(
                                    icon: Icon(Icons.qr_code),
                                    onPressed: () {}),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Name",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 3),
                            TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's VRN",
                              style: TextStyle(
                                  fontSize: 18,
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
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Address",
                              style: TextStyle(
                                  fontSize: 18,
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
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Email",
                              style: TextStyle(
                                  fontSize: 18,
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
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Mobile No.",
                              style: TextStyle(
                                  fontSize: 18,
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
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: "",
                                suffixIcon: IconButton(
                                    icon: Icon(Icons.plus_one_rounded),
                                    onPressed: () {}),
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
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Center(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SalesDesktop(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "Sales",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            )

          /* END OF DESKTOP VERSION */

          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black.withOpacity(0.8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's TIN",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 2),
                            Material(
                              elevation: 4.0,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  suffixIcon: IconButton(
                                      icon: Icon(Icons.qr_code),
                                      onPressed: () {}),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Name",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 3),
                            Material(
                              elevation: 4.0,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's VRN",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 8),
                            Material(
                              elevation: 4.0,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Address",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 8),
                            Material(
                              elevation: 4.0,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.streetAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Email",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 8),
                            Material(
                              elevation: 4.0,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buyer's Mobile No.",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 8),
                            Material(
                              elevation: 4.0,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "",
                                  suffixIcon: IconButton(
                                      icon: Icon(Icons.plus_one_rounded),
                                      onPressed: () {}),
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
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
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
                                      fontSize: 18, color: Colors.yellow),
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
                                        fontSize: 18, color: Colors.yellow),
                                  ),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
