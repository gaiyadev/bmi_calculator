import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reueableIcon.dart';
import 'reusableCard.dart';
import 'constants.dart';

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    cardChild: ReuseableIcon(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    cardChild: ReuseableIcon(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                    colour: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
