import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String? title;
  final String? number;
  final MainAxisAlignment mainaxis;
  final FontWeight data;

  const Details({
    Key? key,
    this.title,
    this.number,
    required this.mainaxis,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainaxis,
      children: [
        Text(
          title!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Text(
          number!,
          style: TextStyle(fontWeight: data),
        )
      ],
    );
  }
}
