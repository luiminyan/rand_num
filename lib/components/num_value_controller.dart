import 'package:flutter/material.dart';

class NumValueController extends StatelessWidget {
  final TextEditingController valueController;
  const NumValueController({super.key, required this.valueController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: TextField(
        // make the text horizontal center
        textAlign: TextAlign.center,
        controller: valueController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          // cancel underline of the textfield
          border: InputBorder.none,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
