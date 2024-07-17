import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_list/model/groceries_category.dart';
import 'package:shopping_list/new_item.dart';
import 'package:http/http.dart' as http;

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
  void initState() {
    super.initState();
    _getfromFirebase();
  }

  List<ListTrait> cloudDatas = [];
  void _getfromFirebase() async {
    final url = Uri.https(
        'first-project-8a707-default-rtdb.firebaseio.com', 'test.json');
    final response = await http.get(url);

    final Map<String, dynamic> listdatas = json.decode(response.body);
    for (var item in listdatas.entries) {
      print(item.value['Category']);
      final category = catstest.entries
          .firstWhere(
              (catItem) => catItem.value.title == item.value['Category'])
          .value;

      print(item.value['name']);

      cloudDatas.add(ListTrait(
          item.value['name'], item.key, item.value['Quantity'], category));
    }

    setState(() {
      newgrocerylist = cloudDatas;
    });
  }

  void _addsomeitem() async {
    final newItem = await Navigator.of(context)
        .push<ListTrait>(MaterialPageRoute(builder: (ctx) => const Newitem()));

    _getfromFirebase();
  }

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
          onPressed: _addsomeitem,
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
