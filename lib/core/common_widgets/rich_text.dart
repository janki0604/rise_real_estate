import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Featured Estates',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // height: 1.5,
                  color: Color(0xff252B5C),
                ),
              ),
              TextSpan(
                text: '\nOur recommended real estates exclusive for you.',
                style: TextStyle(
                  color: Color(0xff252B5C),
                  height: 1.5,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
