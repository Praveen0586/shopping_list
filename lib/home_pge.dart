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

class _HomePageState extends State<HomePage> {
  String? error;
  var isLoading = true;
  @override
  void initState() {
    super.initState();
    _cloudrecive();
  }

  void _cloudrecive() async {
    final url = Uri.https(
        'first-project-8a707-default-rtdb.firebaseio.com', 'bs.json');
    try {
      final listdata = await http.get(url);

      if (listdata.statusCode >= 400) {
        setState(() {
          error = 'Oopsie! Couldn\'t get the data, try again later';
        });
      }
      //  print(listdata.statusCode);

      if (listdata.body == 'null') {
        setState(() {
          isLoading = false;
        });
        return;
      }
      final Map<String, dynamic> cloud = json.decode(listdata.body);
      List<ListTrait> _cloudbackups = [];
      for (var datas in cloud.entries) {
        final findCategory = catstest.entries
            .firstWhere(
                (findit) => datas.value['category'] == findit.value.title)
            .value;
        _cloudbackups.add(ListTrait(datas.value['name'], datas.key,
            datas.value['quantity'], findCategory));
      }

      setState(() {
        newgrocerylist = _cloudbackups;
        isLoading = false;
      });
    } catch (err) {
      setState(() {
        error = 'Something went Wrong, Please try agin later ';
      });
    }
  }

  // adding a new fuction to remove the grocery data
  void _removegrocery(ListTrait item) async {
    final index = newgrocerylist.indexOf(item);
    setState(() {
      newgrocerylist.remove(item);
    });

    final url = Uri.https('first-project-8a707-default-rtdb.firebaseio.com',
        'bs/${item.id}.json');
    final res = await http.delete(url);

    if (res.statusCode >= 400) {
      setState(() {
        newgrocerylist.insert(index, item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    void _addsomeitem() async {
      final newItem = await Navigator.of(context).push<ListTrait>(
          MaterialPageRoute(builder: (ctx) => const Newitem()));
      if (newItem == null) {
        return;
      }
      // _cloudrecive();
      setState(() {
        newgrocerylist.add(newItem);
      });
    }

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
    if (isLoading) {
      content = const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (error != null) {
      content = Center(
        child: Text(error!),
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
