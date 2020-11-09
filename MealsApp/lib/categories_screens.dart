import 'package:flutter/material.dart';

import 'data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hi"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: Categories.map((catData) {
          return CategoryItem(
            id: catData.id,
            title: catData.title,
            color: catData.color,
          );
        }).toList(),
      ),
    );
  }
}
