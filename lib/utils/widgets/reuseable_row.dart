import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final double fontSize;

  const ReusableRow({
    super.key,
    required this.leftText,
    required this.rightText,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(
            fontFamily: 'TajawalB',
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          rightText,
          style: TextStyle(
            fontFamily: 'TajawalB',
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
