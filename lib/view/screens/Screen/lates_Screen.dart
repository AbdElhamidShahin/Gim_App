import 'package:flutter/material.dart';

import '../../../model/json/GetExerciseList.dart';

class Lates_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lates Exercises'),
      ),
      body: Exerciselistwidget(
        pageId: 'lates',
        itemCount: 6, // chestExercises يجب أن يكون List<Exercise>
      ), // Pass the appropriate pageId
    );
  }
}
