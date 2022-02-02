import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                        // width: 300,
                        child: Stack(
                          children: [
                            Container(
                              height: 27.h,
                              width: MediaQuery.of(context).size.width,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                              child: const Center(
                                child: Text(
                                  "Daily Sales",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 38.h,
                                color: Colors.grey.withOpacity(0.7),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Total:",
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Tsh. 2,5000.00/=",
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.18,
                        // width: 300,
                        child: Stack(
                          children: [
                            Container(
                              height: 30.h,
                              width: MediaQuery.of(context).size.width,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                              child: const Center(
                                child: Text(
                                  "Monthly Sales",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 87.h,
                                color: Colors.grey.withOpacity(0.7),
                                child: Column(
                                  children: [
                                    SizedBox(height: 2.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Total Excl:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 2,5000.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Tax:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 2,5000.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Discount:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 100.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Tax Incl:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 49,400.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                        // width: 300,
                        child: Stack(
                          children: [
                            Container(
                              height: 28.h,
                              width: MediaQuery.of(context).size.width,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                              child: const Center(
                                child: Text(
                                  "Daily Purchases",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 38.h,
                                color: Colors.grey.withOpacity(0.7),
                                child: Column(
                                  children: [
                                    SizedBox(height: 6.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Total:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 0.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.18,
                        // width: 300,
                        child: Stack(
                          children: [
                            Container(
                              height: 28.h,
                              width: MediaQuery.of(context).size.width,
                              decoration:
                                  const BoxDecoration(color: Colors.black),
                              child: const Center(
                                child: Text(
                                  "Monthly Purchases",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 88.h,
                                color: Colors.grey.withOpacity(0.7),
                                child: Column(
                                  children: [
                                    SizedBox(height: 2.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Total Excl:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 0.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Tax:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 0.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Discount:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 0.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Tax Incl:",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          "Tsh. 0.00/=",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: [
                ShapeOfView(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.7,
                  shape: ArcShape(
                      direction: ArcDirection.Inside,
                      position: ArcPosition.Right,
                      height: 25.0),
                  child: Container(
                    height: 50,
                    color: Colors.grey.withOpacity(0.3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Transaction Balance",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "10",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.shopping_cart)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ShapeOfView(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.25,
                  shape:
                      CircleShape(borderWidth: 3.0, borderColor: Colors.black),
                  child: Container(
                    height: 50,
                    color: Colors.yellow,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notes),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
