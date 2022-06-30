import 'package:bmi_calculator/constance.dart';
import 'package:flutter/material.dart';

 

class CardChild extends StatelessWidget {

  CardChild({this.icon,this.label});

  final IconData ? icon;
  final  String ? label;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0, color: Colors.grey[200]),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          label!,
          style: kLabelStyle,
        )
      ],
    );
  }
}
