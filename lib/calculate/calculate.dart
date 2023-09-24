// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sveltinity/theme/styles.dart';

class Calculate {
  final int height;
  final int weight;
  double bmi = 0.0;

  Calculate({required this.height, required this.weight});

  String nilaiBMI() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  String kategori() {
    if (bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String keterangan() {
    if (bmi >= 25) {
      return 'You have a more than normal body weight.\n Try to do more Exercise';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight.\nGood job!';
    } else {
      return 'You have a lower than normal body weight.\n Try to eat more';
    }
  }

  Color kategoriColor() {
    if (bmi >= 25) {
      return red;
    } else if (bmi > 18.5) {
      return green;
    } else {
      return yellow;
    }
  }
}
