import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  String? text;

  Notes(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              child: const Icon(Icons.check, color: Colors.white),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text!,
                style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
