import 'package:bmi_calculator/shared/themes/app_colors.dart';
import 'package:bmi_calculator/widget/reusable_card.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: AppColors.activeCardColour),
                ReusableCard(colour: AppColors.activeCardColour),
              ],
            ),
          ),
          ReusableCard(colour: AppColors.activeCardColour),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: AppColors.activeCardColour),
                ReusableCard(colour: AppColors.activeCardColour),
              ],
            ),
          ),
          Container(
            color: AppColors.bottomCardColour,
            margin: EdgeInsets.only(top: 15),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
