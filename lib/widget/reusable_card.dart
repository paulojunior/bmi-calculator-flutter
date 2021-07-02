import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard({
    @required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.colour,
        ),
      ),
    );
  }
}
