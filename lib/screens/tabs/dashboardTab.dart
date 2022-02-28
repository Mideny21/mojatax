import 'package:flutter/material.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({Key? key}) : super(key: key);

  @override
  _DashboardTabState createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 95),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 33,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width / 6.5, 4.5, 0, 0),
                        child: const Text(
                          'Daily Sales',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width / 6.5, 0, 0, 0),
                        child: Row(
                          children: const [
                            Text(
                              'Total:',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              '25,000/=',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 33,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width / 6.5, 4.5, 0, 0),
                        child: const Text(
                          'Daily Purchases',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width / 6.5, 0, 0, 0),
                        child: Row(
                          children: const [
                            Text(
                              'Total:',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              '25,000/=',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 33,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width / 6.5, 4.5, 0, 0),
                        child: const Text(
                          'Monthly Sales',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: 94,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width / 6.5,
                                0,
                                0,
                                0),
                            child: Row(
                              children: const [
                                Text(
                                  'Tax Excl:',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '12,3000/=',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 2),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width / 6.5,
                                0,
                                0,
                                0),
                            child: Row(
                              children: const [
                                Text(
                                  'Tax Excl:',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '12,3000/=',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 2),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width / 6.5,
                                0,
                                0,
                                0),
                            child: Row(
                              children: const [
                                Text(
                                  'Tax Excl:',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '12,3000/=',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 2),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width / 6.5,
                                0,
                                0,
                                0),
                            child: Row(
                              children: const [
                                Text(
                                  'Tax Excl:',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '12,3000/=',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 33,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width / 6.5, 4.5, 0, 0),
                        child: const Text(
                          'Monthly Purchases',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: 96,
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width / 6.5, 0, 0, 0),
                          child: Row(
                            children: const [
                              Text(
                                'Tax Excl:',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '12,3000/=',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width / 6.5, 0, 0, 0),
                          child: Row(
                            children: const [
                              Text(
                                'Tax Excl:',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '12,3000/=',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width / 6.5, 0, 0, 0),
                          child: Row(
                            children: const [
                              Text(
                                'Tax Excl:',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '12,3000/=',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width / 6.5, 0, 0, 0),
                          child: Row(
                            children: const [
                              Text(
                                'Tax Excl:',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '12,3000/=',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 88,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 44,
                    bottom: 0,
                    height: 88,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Transaction Balance",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                Positioned(
                  right: -(MediaQuery.of(context).size.width) + 88,
                  left: 0,
                  bottom: 0,
                  height: 88,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  right: -(MediaQuery.of(context).size.width) + 88,
                  left: 0,
                  bottom: 4,
                  height: 80,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  right: -(MediaQuery.of(context).size.width) + 88,
                  left: 0,
                  bottom: 7,
                  height: 74,
                  child: GestureDetector(
                    onTap: () {
                      _openDialog();
                    },
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Future _openDialog() => showDialog(
      context: context,
      builder: (_) => AlertDialog(
            insetPadding: const EdgeInsets.all(0.0),
            elevation: 20.0,
            backgroundColor: Colors.black,
            content: Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "VAT Amount:",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Payable:",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ));
}
