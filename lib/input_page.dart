import 'package:bmi_calculator/shared/themes/app_colors.dart';
import 'package:bmi_calculator/widget/content_icon.dart';
import 'package:bmi_calculator/widget/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;

enum Gender {
  male,
  famale,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderSelected;

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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      genderSelected = Gender.famale;
                    });
                  },
                  child: ReusableCard(
                    colour: genderSelected == Gender.male
                        ? AppColors.activeCardColour
                        : AppColors.inactiveCardColour,
                    carChild: IconContent(
                      label: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      genderSelected = Gender.famale;
                    });
                  },
                  child: ReusableCard(
                    colour: genderSelected == Gender.famale
                        ? AppColors.activeCardColour
                        : AppColors.inactiveCardColour,
                    carChild: IconContent(
                      label: 'FAMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
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
