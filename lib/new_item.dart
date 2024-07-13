import 'package:flutter/material.dart';
import 'package:shopping_list/model/groceries_category.dart';

class Newitem extends StatefulWidget {
  const Newitem({super.key});

  @override
  State<Newitem> createState() => _NewitemState();
}

class _NewitemState extends State<Newitem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Item ',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    'Title',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: '1',
                      decoration: InputDecoration(
                        label: Text(
                          'Quantity',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(items: [
                      for (var list in Category.values)
                        DropdownMenuItem(
                          value: Category.values,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 12,
                                  width: 12,
                                  child: Icon(Icons.abc)),
                              const SizedBox(
                                width: 25,
                              ),
                              Text(enumname.first)
                            ],
                          ),
                        )
                    ], onChanged: (value) => {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
