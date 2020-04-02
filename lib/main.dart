import 'package:flutter/material.dart';
import 'bmi.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        // brightness: Brightness.dark
      ),
      home: InputBMI(),
    ));

