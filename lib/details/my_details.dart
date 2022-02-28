import 'package:flutter/material.dart';
import 'package:mojatax/details/detail_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TRADetails extends StatefulWidget {
  const TRADetails({Key? key}) : super(key: key);

  @override
  _TRADetailsState createState() => _TRADetailsState();
}

class _TRADetailsState extends State<TRADetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Text(
                "*** START OF LEGAL RECEIPT ***",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Image.asset("assets/images/tra.jpg",
                  height: MediaQuery.of(context).size.height * 0.15),
              Column(
                children: const [
                  SizedBox(height: 10),
                  Text("MOJA ONE HOLDING LIMITED",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text("1202, ARUSHA",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.center,
                      title: "MOBILE No:",
                      number: "0785481717"),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.center,
                      title: "TIN:",
                      number: "152415311"),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.center,
                      title: "VRN:",
                      number: "123456789LA"),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.center,
                      title: "SERIAL NUMBER:",
                      number: "10TZ100616"),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.center,
                      title: "UIN:",
                      number: "09VFDWEBAPI-10131758715241531110TZ100616"),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.center,
                      title: "TAX OFFICE:",
                      number: "ARUSHA"),
                ],
              ),
              const Divider(thickness: 1.0, color: Colors.black),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Details(
                      data: FontWeight.normal,
                      mainaxis: MainAxisAlignment.start,
                      title: "CUSTOMER NAME:",
                      number: "JOEL"),
                  SizedBox(height: 4),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.start,
                      title: "CUSTOMER ID TYPE:",
                      number: "NIDA"),
                  SizedBox(height: 4),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.start,
                      title: "CUSTOMER ID:",
                      number: "123456789"),
                  SizedBox(height: 4),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.start,
                      title: "CUSTOMER MOBILE:",
                      number: "0783207124")
                ],
              ),
              const Divider(thickness: 1.0, color: Colors.black),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "RECEIPT NO:",
                      number: "384"),
                  SizedBox(height: 4),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "ZNUMBER:",
                      number: "5/20220225"),
                  SizedBox(height: 4),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "DATE: 2022-02-25",
                      number: "TIME: 11:38:46"),
                ],
              ),
              const Divider(thickness: 1.0, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("DESCRIPTION",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("QTY", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("PRICE", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 1.0, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("A"),
                  Text("1"),
                  Text("1000.00 A",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const Divider(thickness: 1.0, color: Colors.black),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("B"),
                  Text("1"),
                  Text("1000.00 C",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const Divider(thickness: 1.0, color: Colors.black),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "TOTAL EXCL OF TAX:",
                      number: "1847.46"),
                  SizedBox(height: 4),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "TAX A -18.00%:",
                      number: "152.54"),
                  SizedBox(height: 4),

                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "TAX C -0.00%:",
                      number: "0.00"),
                  SizedBox(height: 4),

                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "TOTAL TAX:",
                      number: "152.54"),
                  SizedBox(height: 4),
                  Details(
                      data: FontWeight.bold,
                      mainaxis: MainAxisAlignment.spaceBetween,
                      title: "TOTAL INCL OF TAX:",
                      number: "2000.00"),
                  SizedBox(height: 4),
                  // Details(
                  //     data: FontWeight.bold,
                  //     mainaxis: MainAxisAlignment.spaceBetween,
                  //     title: "CASH:",
                  //     number: "1000.00"),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: const [
                  Center(
                    child: Text('RECEIPT VERIFICATION CODE',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 8),
                  Center(
                      child: Text("1D7046384",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)))
                ],
              ),
              const SizedBox(height: 30),
              QrImage(
                data:
                    "https://virtual.tra.go.tz/efdmsRctVerify/1D7046384_113846",
                version: QrVersions.auto,
                size: 150.0,
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text("*** END OF LEGAL RECEIPT ***",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
