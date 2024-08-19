import 'package:flutter/material.dart';
import '../../../model/json/GetExerciseList.dart';

class Sholder_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shorter Exercises'),
      ),
      body: Exerciselistwidget(
        pageId: 'shorter',
        itemCount: 6, // chestExercises يجب أن يكون List<Exercise>
      ), // Pass the appropriate pageId
    );
  }
}
