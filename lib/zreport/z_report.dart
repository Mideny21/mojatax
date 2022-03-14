import 'package:flutter/material.dart';
import 'package:mojatax/details/detail_widget.dart';
import 'package:mojatax/zreport/dashes.dart';

class ZReport extends StatefulWidget {
  const ZReport({Key? key}) : super(key: key);

  @override
  _ZReportState createState() => _ZReportState();
}

class _ZReportState extends State<ZReport> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Text("*** START OF LEGAL RECEIPT ***",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Image.asset("assets/images/tra.jpg",
                    height: MediaQuery.of(context).size.height * 0.15),
                Column(
                  children: const [
                    SizedBox(height: 10),
                    Text("TIMOTHY GILBERT MAEDA",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("P.O BOX 1202",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("ARUSHA",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("0785481717",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Details(
                        data: FontWeight.bold,
                        mainaxis: MainAxisAlignment.center,
                        title: "TIN:",
                        number: "150352835"),
                    Details(
                        data: FontWeight.bold,
                        mainaxis: MainAxisAlignment.center,
                        title: "VRN:",
                        number: "NOT REGISTERED"),
                    Details(
                        data: FontWeight.bold,
                        mainaxis: MainAxisAlignment.center,
                        title: "SERIAL NUMBER:",
                        number: "10TZ103279"),
                    const SizedBox(height: 18),
                    Text("TAX OFFICE ARUSHA",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Details(
                        data: FontWeight.bold,
                        mainaxis: MainAxisAlignment.spaceBetween,
                        title: "DATE 23-02-2022:",
                        number: "TIME 10:42:28"),
                    const SizedBox(height: 18)
                  ],
                ),
                const SizedBox(height: 10),
                const MySeparator(color: Colors.black),
                const SizedBox(height: 10),
                Text("DAILY Z REPORT",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "DISCOUNT",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "AMOUNT",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "MARKUP",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "AMOUNT",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "MONEY",
                    number: "0.00"),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MySeparator(color: Colors.grey.withOpacity(0.3)),
                ),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "RECEIPTS ISSUED",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "CORRECTIONS",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "AMOUNT",
                    number: "0.00"),
                const SizedBox(height: 15),
                const MySeparator(color: Colors.black),
                const SizedBox(height: 15),
                Text("PAYMENTS REPORT",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                const MySeparator(color: Colors.black),
                const SizedBox(height: 15),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL",
                    number: "0"),
                Text("TAX REPORT",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(height: 10),
                const MySeparator(color: Colors.black),
                const SizedBox(height: 15),
                Details(
                    mainaxis: MainAxisAlignment.start,
                    data: FontWeight.bold,
                    title: "1:TAX A (18:00%)",
                    number: ""),
                SizedBox(height: 5),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TURNOVER",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "NET SUM",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.w900,
                    title: "TAX",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.start,
                    data: FontWeight.bold,
                    title: "2:TAX B (0:00%)",
                    number: ""),
                SizedBox(height: 5),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.start,
                  data: FontWeight.bold,
                  title: "3:TAX C (0:00%)",
                  number: "",
                ),
                SizedBox(height: 5),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.start,
                  data: FontWeight.bold,
                  title: "4:TAX D (SR)",
                  number: "",
                ),
                SizedBox(height: 5),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "5: EXEMPT",
                    number: ""),
                SizedBox(height: 5),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TURNOVER",
                    number: "0.00"),
                Text("TOTAL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(height: 10),
                const MySeparator(color: Colors.black),
                const SizedBox(height: 15),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "NET (A+B+C)",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TAX",
                  number: "0.00",
                ),
                Details(
                  mainaxis: MainAxisAlignment.spaceBetween,
                  data: FontWeight.bold,
                  title: "TURNOVER <EX+SR>",
                  number: "0.00",
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: const MySeparator(color: Colors.grey),
                ),
                const SizedBox(height: 15),
                Details(
                    mainaxis: MainAxisAlignment.start,
                    data: FontWeight.bold,
                    title: "EVENTS COUNTERS",
                    number: ""),
                SizedBox(height: 5),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TAX CHANGES",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "FIRM VERSION CHANGES",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.w900,
                    title: "CMOS ERRORS",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "HEADERS LINES CHANGES",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "PRINTER DISCONNECTION",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "SERVICE INTERVENTIONS",
                    number: "0"),
                SizedBox(height: 5),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: const MySeparator(color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Text("FM SUMMARY",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL GROSS <EX.>",
                    number: "0.02"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL GROSS <S.R>",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL GROSS*A",
                    number: "795,828,405.60"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL TAX.A",
                    number: "121,397,553.39"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL NET*A",
                    number: "674,430,852.21"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL GROSS*B",
                    number: "0.01"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL TAX* B",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL NET*B",
                    number: "0.01"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL GROSS*C",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TOTAL TAX*C",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TAX NET*C",
                    number: "0.00"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "TAX CHANGES",
                    number: "1"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "FIRMWARE VERSION CHANGES",
                    number: "3"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "CMOS ERRORS",
                    number: "4"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "PRINTER DISCONNECTION",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "HEADER LINE CHANGES",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "PRINTER DISCONNECTION",
                    number: "0"),
                Details(
                    mainaxis: MainAxisAlignment.spaceBetween,
                    data: FontWeight.bold,
                    title: "SERVICE INTERVENTIONS",
                    number: "4"),
                SizedBox(height: 12),
                Text("*** END OF LEGAL RECEIPT ****",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
