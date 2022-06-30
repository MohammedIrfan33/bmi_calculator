import 'package:bmi_calculator/constance.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.label});

  final Function() onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBottonContainerColor,
          height: kBottomContainerHeight,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 20),
          child: Center(
            child: Text(
              label,
              style: kLargeButtonTextStyle,
            ),
          )),
    );
  }
}
