import 'package:flutter/material.dart';
import 'package:shopping_list/datas/categories.dart';
import 'package:shopping_list/datas/items_groceries.dart';
import 'package:shopping_list/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Groceries',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (ctx, index) => ListTile(
                  title: Text(listofitems[index].name),leading:  Container(
              height: 30,
              width: 30,
              color:listofitems[index].cats.color ,
            ),
                )));
  }
}
