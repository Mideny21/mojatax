import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(3, 3, 3, 2),
        child: Stack(
          children: [
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.21 + 10,
              right: 5,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //color: Colors.white,
                  border: Border.all(width: 3.0, color: Colors.black),
                ),
                child: GestureDetector(
                  onTap: () {
                    _openDialog();
                    // openDialog2();
                  },
                  child: const Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.21,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Discount:",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2.5),
                          Text(
                            "SubTotal:",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2.5),
                          Text(
                            "VAT:",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2.5),
                          Text(
                            "Total:",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(height: 7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Payments",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Done",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _openDialog() => showDialog(
      context: context,
      builder: (_) => AlertDialog(
            insetPadding: const EdgeInsets.all(15.0),
            title: const Text("User Input"),
            elevation: 20.0,
            backgroundColor: const Color(0xff5B5E55),
            content: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Enter Product",
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
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "",
                            fillColor: Colors.white.withOpacity(0.9),
                            filled: true,
                            contentPadding: const EdgeInsets.all(12.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product's ID",
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
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "",
                            fillColor: Colors.white.withOpacity(0.9),
                            filled: true,
                            contentPadding: const EdgeInsets.all(12.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price/Unit",
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
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "",
                            fillColor: Colors.white.withOpacity(0.9),
                            filled: true,
                            contentPadding: const EdgeInsets.all(12.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quantity",
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
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "",
                            fillColor: Colors.white.withOpacity(0.9),
                            filled: true,
                            contentPadding: const EdgeInsets.all(12.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Summary",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          maxLines: 5,
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
                            fillColor: Colors.white.withOpacity(0.9),
                            filled: true,
                            contentPadding: const EdgeInsets.all(12.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Done",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ));
}
