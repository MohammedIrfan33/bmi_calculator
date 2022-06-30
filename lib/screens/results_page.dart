import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/constance.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({required this.result,required this.bmi,required this.bmiConclution});

  final String  result;
  final String bmi;
  final String bmiConclution;

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    print('result page rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const  Text('RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child:Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15),
              child: const   Text(
              'YOUR RESULT',
              style: kResultHeadingStyle,
            ),
            ),
          ),
          Expanded(
            flex: 5,
            child: InputCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(
                     widget.result.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                     widget.bmi,
                    style: kBmiTextStyle,
                  ),
                  Text(
                     widget.bmiConclution,
                    style: kBmiConclution,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            label: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
