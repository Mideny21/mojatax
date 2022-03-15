import 'package:flutter/material.dart';
import 'package:mojatax/screens/SalesSection/Taxpayer.dart';
import 'package:mojatax/screens/SalesSection/driving_licenses.dart';
import 'package:mojatax/screens/SalesSection/national_id.dart';
import 'package:mojatax/screens/SalesSection/nec.dart';
import 'package:mojatax/screens/SalesSection/no_id.dart';
import 'package:mojatax/screens/SalesSection/passport.dart';
import 'package:mojatax/widgets/Saletab.dart';

class SalesTab extends StatelessWidget {
  const SalesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 700;

/* START OF DESKTOP VERSION */
    return isDesktop(context)
        ? Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MOJA TAX",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                        color: Color(0xffE5E5E5),
                        borderRadius: BorderRadius.circular(18.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Buyer's Identification Type",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: SaleDetails(
                                        "Taxpayer Identification (TIN)", () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const TaxPayer(),
                                        ),
                                      );
                                    }),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: SaleDetails("Driving Licenses", () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DrivingLicenses(),
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: SaleDetails("Passport", () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const TaxPayer(),
                                        ),
                                      );
                                    }),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: SaleDetails(
                                        "National Identity (NIDA)", () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DrivingLicenses(),
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child:
                                        SaleDetails("Voter's Number (NEC)", () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const TaxPayer(),
                                        ),
                                      );
                                    }),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: SaleDetails("No ID NIL", () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DrivingLicenses(),
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : SingleChildScrollView(
            child: Column(
            children: [
              const SizedBox(height: 24),
              const Text(
                "Buyer's Identification Type",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              const SizedBox(height: 10),
              SaleDetails("Taxpayer Identification (TIN)", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TaxPayer(),
                  ),
                );
              }),
              SaleDetails("Driving Licenses", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrivingLicenses(),
                  ),
                );
              }),
              SaleDetails("Voters Number (NEC)", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VotersNec()),
                );
              }),
              SaleDetails("Passport", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Passport()),
                );
              }),
              SaleDetails("National Identity (NIDA)", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NationalIdPage()),
                );
              }),
              SaleDetails("No ID (NIL)", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NoId()),
                );
              }),
            ],
          ));
  }
}
