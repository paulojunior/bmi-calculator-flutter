import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget carChild;

  ReusableCard({
    @required this.colour,
    @required this.carChild,
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
        child: this.carChild,
      ),
    );
  }
}
