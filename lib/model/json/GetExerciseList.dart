import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../view/wedget/costom_bosh.dart';
import '../Item/Item.dart';

class Exerciselistwidget extends StatelessWidget {
  final String pageId;
  final int itemCount;
  final void Function(Exercise)? onAddPressed;

  const Exerciselistwidget({
    Key? key,
    required this.pageId,
    required this.itemCount,
    this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, List<Exercise>>>(
      future: fetchExercisesFromJson(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error loading exercises: ${snapshot.error}'),
          );
        } else if (snapshot.hasData) {
          Map<String, List<Exercise>> exercisesMap = snapshot.data!;
          List<Exercise> exercises = exercisesMap[pageId] ?? [];
          List<Exercise> displayedExercises =
          exercises.take(itemCount).toList();

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Container(
                child: Column(
                  children: displayedExercises
                      .map(
                        (exercise) => CustomBosh(
                      images: exercise.image,
                      text5: exercise.instructions.join(),
                      text3: exercise.title,
                      text4: exercise.details,
                      onAddPressed: onAddPressed,
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
          );
        } else {
          return Center(child: Text('No data available'));
        }
      },
    );
  }

  Future<Map<String, List<Exercise>>> fetchExercisesFromJson() async {
    try {
      final String response =
      await rootBundle.loadString('assets/exercises.json');
      final data = json.decode(response) as Map<String, dynamic>;
      Map<String, List<Exercise>> exercisesMap = data.map((key, value) {
        List<Exercise> exercises = (value as List<dynamic>)
            .map((json) => Exercise.fromJson(json))
            .toList();
        return MapEntry(key, exercises);
      });
      return exercisesMap;
    } catch (e) {
      throw e;
    }
  }
}
