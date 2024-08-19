import 'package:flutter/material.dart';

import '../../../model/json/GetExerciseList.dart';

class Legs_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legs Exercises'),
      ),
      body: Exerciselistwidget(
        pageId: 'legs',
        itemCount: 6, // chestExercises يجب أن يكون List<Exercise>
      ), // Pass the appropriate pageId
    );
  }
}
