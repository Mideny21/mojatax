import 'package:flutter/material.dart';

class AttachmentsForm extends StatefulWidget {
  const AttachmentsForm({Key? key}) : super(key: key);

  @override
  _AttachmentsFormState createState() => _AttachmentsFormState();
}

class _AttachmentsFormState extends State<AttachmentsForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 20, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.grey[600]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        "Complete Registration Form",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: const Icon(
                      Icons.file_present,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.grey[600]),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Applicant's TIN Certificate",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: const Icon(
                      Icons.file_present,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.grey[600]),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Applicant's VRN Certificate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            "(For VAT Registered Applicant's)",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: const Icon(
                      Icons.file_present,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.grey[600]),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Applicant's National ID Card",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: const Icon(
                      Icons.file_present,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 50, 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(width: 1.0, color: Colors.black)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700))),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
