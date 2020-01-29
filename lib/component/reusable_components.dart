import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableIconTextCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const ReusableIconTextCard({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundIconButton({this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 6.0,
      shape: CircleBorder(),
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
