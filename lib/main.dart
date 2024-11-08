import 'package:flutter/material.dart';

import 'package:carcommerce/cars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Commerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(
          secondary: Colors.deepOrange[400],
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
