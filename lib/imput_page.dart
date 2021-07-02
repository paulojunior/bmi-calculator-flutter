import 'package:bmi_calculator/widget/reusable_card.dart';
import 'package:flutter/material.dart';

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
                ReusableCard(colour: Color(0xFF1D1E33)),
                ReusableCard(colour: Color(0xFF1D1E33)),
              ],
            ),
          ),
          ReusableCard(colour: Color(0xFF1D1E33)),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: Color(0xFF1D1E33)),
                ReusableCard(colour: Color(0xFF1D1E33)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
