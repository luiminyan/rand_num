import 'package:flutter/material.dart';

import 'components/rand_num_gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the banner
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.blueGrey[200],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[400],
            title: const Center(
              child: Text(
                'Random number generator',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: RandNumGen(),
        ),
      ),
    );
  }
}
