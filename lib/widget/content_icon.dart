import 'package:bmi_calculator/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;

  IconContent({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(height: 15),
        Text(
          this.label,
          style: TextStyle(
            fontSize: 18.0,
            color: AppColors.fontColor,
          ),
        )
      ],
    );
  }
}
