import 'package:bmi/BMI/calc_bmi.dart';
import 'package:bmi/BMI/colors.dart';
import 'package:bmi/BMI/widgets/input_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { male, female }

Gender? selectedGender;

int currentHeight = 160;

int currentWeight = 60;

int currentAge = 30;

String? resultBMI;

class _InputPageState extends State<InputPage> {
  void calcBMI() {
    Navigator.pushNamed(
      context,
      '/result/',
    );
  }

  void changeHeight(double val) {
    setState(() {
      currentHeight = val.round();
    });
  }

  void increaseWeight() {
    setState(() {
      if (currentWeight < 200) {
        currentWeight++;
      }
    });
  }

  void decreaseWeight() {
    setState(() {
      if (currentWeight > 20) {
        currentWeight--;
      }
    });
  }

  void increaseAge() {
    setState(() {
      if (currentAge < 95) {
        currentAge++;
      }
    });
  }

  void decreaseAge() {
    setState(() {
      if (currentAge > 5) {
        currentAge--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: reusableCard(
                      gender: 'MALE',
                      color: selectedGender == Gender.male
                          ? Colors.lightBlue
                          : AppColors.PRIMARY,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: reusableCard(
                      color: selectedGender == Gender.female
                          ? Colors.pinkAccent
                          : AppColors.PRIMARY,
                      gender: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
            sliderWidget(
              currentHeight: currentHeight,
              func: changeHeight,
            ),
            Row(
              children: [
                Expanded(
                  child: weightCard(
                    value: currentWeight,
                    func1: increaseWeight,
                    func2: decreaseWeight,
                  ),
                ),
                Expanded(
                  child: ageCard(
                    value: currentAge,
                    func1: increaseAge,
                    func2: decreaseAge,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                CalcBMI bmi = CalcBMI(
                  weight: currentWeight,
                  height: currentHeight,
                );
                Navigator.pushNamed(context, '/result/');
                resultBMI = bmi.calculate();
              },
              child: calculateBtn(),
            ),
          ],
        ),
      ),
    );
  }
}
