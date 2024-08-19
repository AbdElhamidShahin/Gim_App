import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/Item/ItemProvider.dart';
import '../../../model/json/GetExerciseList.dart';


class HandsScreenadd extends StatelessWidget {
  final String pageId;
final int? itemCount;
  const HandsScreenadd(
      {super.key, required this.pageId,  this.itemCount}); // Declare pageId as a class variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Exerciselistwidget(
      pageId: 'hands',
          itemCount: itemCount ?? 30,
      onAddPressed: (item) {
        Provider.of<ItemProvider>(context, listen: false)
            .addItem(pageId, item); // Ensure item is passed correctly
      },
    )); // chestExercises يجب أن يكون List<Exercise>
  }
}
