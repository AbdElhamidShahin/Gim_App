import 'package:flutter/material.dart';

import '../../../model/json/GetExerciseList.dart';

class beilyScreen extends StatelessWidget {
  const beilyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beily Exercises'),
      ),
      body: Exerciselistwidget(
        pageId: 'beily',
        itemCount: 6,
      ),
    );
  }
}
