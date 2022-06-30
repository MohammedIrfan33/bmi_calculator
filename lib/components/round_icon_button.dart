import 'package:bmi_calculator/constance.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, this.roundIcon, required this.onPressed})
      : super(key: key);

  final IconData? roundIcon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    print('round iconrebuild');
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 50.0),
      shape: const CircleBorder(),
      fillColor: kRoundIconButtonFillColor,
      child: Icon(
        roundIcon!,
        color: Colors.white,
      ),
    );
  }
}
