import 'package:bmi/BMI/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget reusableCard({
  double margin = 20,
  Color? color,
  String gender = '?gender?',
  icon = FontAwesomeIcons.mars,
}) {
  return Container(
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: color,
    ),
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 90,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: const TextStyle(
            letterSpacing: 2,
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    ),
  );
}

Widget calculateBtn() {
  return Container(
    margin: const EdgeInsets.only(
      bottom: 40,
      left: 20,
      right: 20,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.deepPurpleAccent,
    ),
    height: 80,
    child: const Center(
      child: Text(
        'CALCULATE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
        ),
      ),
    ),
  );
}

Widget sliderWidget({
  int? currentHeight,
  void Function(double x)? func,
}) {
  return Row(
    children: [
      Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.PRIMARY,
          ),
          height: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'HEIGHT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
              ),
              Text(
                '${currentHeight!.round()} cm',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: currentHeight.toDouble(),
                activeColor: Colors.pink,
                label: currentHeight.toString(),
                min: 100,
                max: 200,
                onChanged: func,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget weightCard({
  int? value,
  void Function()? func1,
  void Function()? func2,
}) {
  return Container(
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.PRIMARY,
    ),
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'WEIGHT',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        Text(
          '$value Kg',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: '+weight',
              backgroundColor: Colors.red,
              onPressed: func1,
              child: const Icon(
                Icons.add,
              ),
            ),
            FloatingActionButton(
              heroTag: '-weight',
              backgroundColor: Colors.green,
              onPressed: func2,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget ageCard({
  int? value,
  void Function()? func1,
  void Function()? func2,
}) {
  return Container(
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.PRIMARY,
    ),
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         const Text(
          'AGE',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
         Text(
          '$value',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: '+',
              backgroundColor: Colors.red,
              onPressed: func1,
              child: const Icon(
                Icons.add,
              ),
            ),
            FloatingActionButton(
              heroTag: '-',
              backgroundColor: Colors.green,
              onPressed: func2,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ],
    ),
  );
}
