import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/Item/ItemProvider.dart';
import '../../../model/json/GetExerciseList.dart';

class ChestScreenAdd extends StatelessWidget {
  final String pageId;
  final int? itemcount;

  ChestScreenAdd(
      {super.key, required this.pageId, this.itemcount}); // Declare pageId as a class variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Exerciselistwidget(
      pageId: 'chest',
      itemCount: itemcount ?? 30,
      onAddPressed: (item) {
        Provider.of<ItemProvider>(context, listen: false)
            .addItem(pageId, item); // Ensure item is passed correctly
      },
    ));
  }
}
