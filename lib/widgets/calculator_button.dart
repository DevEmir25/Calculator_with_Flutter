import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
  });
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
              text,
            style: new TextStyle(
              fontFamily: 'BebasNeue',
              fontSize: textSize,
            ),
          ),
          onPressed: () => callback(text),
          color: Color(fillColor),
          textColor: Color(textColor),
        ),
      ),
    );
  }
}