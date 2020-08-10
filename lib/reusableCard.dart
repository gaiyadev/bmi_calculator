import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color colour;
  final cardChild;
  ReuseableCard({@required this.colour, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
