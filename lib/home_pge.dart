import 'package:flutter/material.dart';
import 'package:shopping_list/model/groceries_category.dart';
import 'package:shopping_list/model/list_tile.dart';
import 'package:shopping_list/new_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// adding a new fuction to remove the grocery data
void _removegrocery(ListTrait item) {
  newgrocerylist.remove(item);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: newgrocerylist.length,
      itemBuilder: (context, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.onSurface,
          child: Center(
              child: Text(
            ' Grocery Removed ',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onError),
          )),
        ),
        onDismissed: (direction) {
          {
            _removegrocery(newgrocerylist[index]);
          }
        },
        key: ValueKey(newgrocerylist[index].id),
        child: ListTile(
          title: Text(
            newgrocerylist[index].title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          enabled: true,
          leading: Icon(
            newgrocerylist[index].category.icon,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          trailing: Text(
            'Quantity : ${newgrocerylist[index].quantity}',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
    if (newgrocerylist.isEmpty) {
      content = Center(
        widthFactor: 100,
        child: Text(
          ' The grocery shelves are bare. We need to add some items.',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSecondary),
        ),
      );
    }
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final newItem = await Navigator.of(context).push<ListTrait>(
                MaterialPageRoute(builder: (ctx) => const Newitem()));

            if (newItem == null) {
              return;
            }
            setState(() {
              newgrocerylist.add(newItem);
            });
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
        body: content);
  }
}
