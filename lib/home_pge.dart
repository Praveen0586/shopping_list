import 'package:flutter/material.dart';
import 'package:shopping_list/model/list_tile.dart';
import 'package:shopping_list/new_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => const Newitem()));
          },
          elevation: 50,
          child: Icon(
            Icons.add_circle_outline_sharp,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Flutter Groceries',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
        ),
        body: const Listing());
  }
}
