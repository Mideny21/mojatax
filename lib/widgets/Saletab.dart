import 'package:flutter/material.dart';

class SaleDetails extends StatelessWidget {
  String? text;
  Function() function;
  SaleDetails(this.text, this.function);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 4),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.black,
          ),
          height: 55,
          child: Center(
              child: Text(
            text!,
            style: const TextStyle(
                color: Colors.yellow,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
