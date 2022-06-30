import 'package:bmi_calculator/calculate_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/components/card_child.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  //state creation of InputPage
  @override
  InputPageState createState() {
    return InputPageState(); //constructor of state class
  }
}

class InputPageState extends State<InputPage> {
  Color maleCardColor = kInActiveColor;
  Color femaleCardColor = kInActiveColor;

  int height = 180;

  int inputWeight = 60;
  int age = 20;


  

  // void updateColor(int gender) {
  //   //male card color change
  //   if (gender == 1) {
  //     if (maleCardColor == inActiveColor)
  //       maleCardColor = activeColor;
  //     else
  //       maleCardColor = inActiveColor;
  //   }
  //   //female card color update
  //   if (gender == 2) {
  //     if (femaleCardColor == inActiveColor)
  //       femaleCardColor = activeColor;
  //     else
  //       femaleCardColor = inActiveColor;
  //   }
  // }
  Gender? selectGender;

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    cardColor: selectGender == Gender.male
                        ? kActiveColor
                        : kInActiveColor,
                    cardChild: CardChild(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: InputCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    cardColor: selectGender == Gender.female
                        ? kActiveColor
                        : kInActiveColor,
                    cardChild: CardChild(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InputCard(
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBoldText,
                      ),
                      Text(
                        'CM',
                        style: kLabelStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: kSliderInActiveTrackerColor,
                        activeTrackColor: kSliderActiveTrackerColor,
                        thumbColor: kSliderThumbColor,
                        overlayColor: kSliderOverlayColor,
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        )),
                    child: Slider(
                      value: height.toDouble(),
                      min: 90.0,
                      max: 220.0,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: InputCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelStyle,
                      ),
                      Text(
                        inputWeight.toString(),
                        style: kBoldText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            roundIcon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                inputWeight++;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            roundIcon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                inputWeight--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  onPress: () {},
                )),
                Expanded(
                    child: InputCard(
                  onPress: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kLabelStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kBoldText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            roundIcon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            roundIcon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              CalculateBrain calaculateBmi = CalculateBrain(height: height,weight: inputWeight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
                bmi: calaculateBmi.getCalculation(),
                result: calaculateBmi.getResults(),
                bmiConclution: calaculateBmi.getConclution(),
              ),),);
            },
            label: 'CALCULATE',
          )
        ],
      ),
    );
  }
}

