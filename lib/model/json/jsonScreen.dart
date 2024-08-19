import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Item/Item.dart';


Future<List<Exercise>> fetchExercisesFromJson(BuildContext context) async {
  try {
    final String response =
        await rootBundle.loadString('assets/exercises.json');
    final data = json.decode(response)['Exercise'] as List<dynamic>;
    List<Exercise> exercises =
        data.map((json) => Exercise.fromJson(json)).toList();
    return exercises;
  } catch (e) {
    throw e; // Optionally, rethrow the error to handle it higher up
  }
}
