import 'package:flutter/material.dart';
import 'package:shopping_list/datas/categories.dart';
import 'package:shopping_list/datas/items_groceries.dart';
import 'package:shopping_list/model/groceries_category.dart';

class itemstrait extends StatelessWidget {
  const itemstrait({super.key, required this.item});

  final Grocerytrait item;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          color: categories[Categories]!.color,
        )
      ],
    );
  }
}
