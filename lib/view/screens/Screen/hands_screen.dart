import 'package:flutter/material.dart';

import '../../../model/json/GetExerciseList.dart';

class Hands_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hands Exercises'),
      ),
      body: Exerciselistwidget(
        pageId: 'hands',
        itemCount: 6, // chestExercises يجب أن يكون List<Exercise>
      ), // Pass the appropriate pageId
    );
  }
}
