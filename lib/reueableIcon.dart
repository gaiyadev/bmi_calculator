import 'package:flutter/material.dart';
import 'constants.dart';

class ReuseableIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  ReuseableIcon({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelColor,
        )
      ],
    );
  }
}
