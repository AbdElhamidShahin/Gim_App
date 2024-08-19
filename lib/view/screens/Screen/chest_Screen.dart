import 'package:flutter/material.dart';
import '../../../model/json/GetExerciseList.dart';

class chest_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chest Exercises'),
      ),
      body: const Exerciselistwidget(
        pageId: 'chest',
        itemCount: 6, // chestExercises يجب أن يكون List<Exercise>
      ), // Pass the appropriate pageId
    );
  }
}
