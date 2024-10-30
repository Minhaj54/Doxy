import 'package:flutter/material.dart';

class DocCardWidget extends StatelessWidget {
  final String cardTitle;
  final double cardHeight;
  const DocCardWidget(
      {super.key, required this.cardTitle, required this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: cardHeight,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Text(
          cardTitle,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
