import 'package:flutter/material.dart';
import '3.1 dummy_data.dart';
import 'Category_item.dart';

class Catagoriescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),  
        children: DUMMY_CATEGORIES
            .map((context) =>
                Categoryitem(context.id, context.title, context.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
