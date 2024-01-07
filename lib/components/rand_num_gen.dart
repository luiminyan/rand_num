import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rand_num/components/num_value_controller.dart';

class RandNumGen extends StatefulWidget {
  const RandNumGen({super.key});
  @override
  State<RandNumGen> createState() => _RandNumGenState();
}

class _RandNumGenState extends State<RandNumGen> {
  TextEditingController minValueController = TextEditingController();
  TextEditingController maxValueController = TextEditingController();
  TextEditingController numValueController = TextEditingController();
  List<int> generatedNumbers = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Generate ',
                style: TextStyle(fontSize: 20),
              ),
              NumValueController(valueController: numValueController),
              Text(
                ' number(s) ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'between',
                style: TextStyle(fontSize: 20),
              ),
              NumValueController(valueController: minValueController),
              Text(
                ' and ',
                style: TextStyle(fontSize: 20),
              ),
              NumValueController(valueController: maxValueController)
            ],
          ),
        ),
        OutlinedButton(
          onPressed: generateNumbers,
          child: Text(
            'Generate',
            style: TextStyle(color: Colors.blueGrey),
          ),
          style: ButtonStyle(
              // TODO: change btn border color
              ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int number in generatedNumbers)
                Text(
                  '$number',
                  style: TextStyle(fontSize: 15),
                ),
            ],
          ),
        ),
      ],
    );
  }

  void generateNumbers() {
    // read value from input
    int? minValue = int.tryParse(minValueController.text);
    int? maxValue = int.tryParse(maxValueController.text);
    int? numValue = int.tryParse(numValueController.text);

    // create random generator
    Random rand = Random();
    generatedNumbers = List.generate(numValue!, (index) {
      return rand.nextInt(maxValue! - minValue!) + 1 + minValue;
    });

    // trigger UI refresh
    setState(() {});
  }
}
