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
    return SingleChildScrollView(
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
            MaterialPageRoute(builder: (context) => const NationalIdPage()),
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
