import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/Item/ItemProvider.dart';
import '../../../model/json/GetExerciseList.dart';

class Beilyscreenadd extends StatelessWidget {
  final String pageId;
  final int? itemcount;
  const Beilyscreenadd({super.key, required this.pageId, this.itemcount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Exerciselistwidget(
        pageId: "beily",
        itemCount: itemcount ?? 30,
        onAddPressed: (item) {
          Provider.of<ItemProvider>(context, listen: false)
              .addItem(pageId, item);
        },
      ),
    );
  }
}
