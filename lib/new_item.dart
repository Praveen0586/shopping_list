import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_list/datas/categories.dart';
import 'package:shopping_list/model/groceries_category.dart';
import 'package:http/http.dart' as http;

class Newitem extends StatefulWidget {
  const Newitem({super.key});

  @override
  State<Newitem> createState() => _NewitemState();
}

class _NewitemState extends State<Newitem> {
  var _selectedtitle = '';
  var _selectedCategory = catstest[Categories.diary]!;
  var _selectedQuantity = 1;
  final _formkey = GlobalKey<FormState>();

  void _save() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Grocery Updated',
              style: Theme.of(context).textTheme.bodyLarge!)));

      Navigator.of(context).pop(ListTrait(_selectedtitle,
          DateTime.now().toString(), _selectedQuantity, _selectedCategory));

      // Navigator.of(context).pop(
      //   ListTrait(_selectedtitle, 'bb' , _selectedQuantity,
      //       _selectedCategory),
      // );
      print(newgrocerylist);
    }
  }

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
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _selectedtitle,
                decoration: InputDecoration(
                  label: Text(
                    'Title',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1 ||
                      value.trim().length > 50) {
                    return 'must be between 1 and 50 charector';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  _selectedtitle = newValue!.toString();
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        initialValue: '1',
                        onSaved: (newValue) {
                          _selectedQuantity = int.parse(newValue!);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text(
                            'Quantity',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        validator: (quantity) {
                          if (quantity == null ||
                              quantity.isEmpty ||
                              double.tryParse(quantity) == null ||
                              double.tryParse(quantity)! <= 0) {
                            return ' The entered value must be an Integer ';
                          }
                          return null;
                        }),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      onSaved: (newValue) {
                        setState(() {
                          _selectedCategory = newValue!;
                        });
                      },
                      value: _selectedCategory,
                      //  value: catstest[Categories.backing]!,
                      items: [
                        for (var cats in catstest.entries)
                          //to avoid this for loop we can use
                          // .map((items) => Dropdown menuitem (
                          //  value: items ,
                          //  etc .....))
                          DropdownMenuItem(
                            enabled: true,
                            value: cats
                                .value, //note th evalue using hee we must enter the var value intiated in the for loop or on map method
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 12,
                                  width: 12,
                                  child: Icon(
                                    cats.value.icon,
                                    size: 23,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SizedBox(
                                  height: 26,
                                  child: Text(
                                    cats.value.title,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          )
                      ],
                      decoration: InputDecoration(
                          label: Text(
                        'Choose Catagory',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 10),
                      )),
                      onChanged: (value) => {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        _formkey.currentState!.reset();
                      },
                      icon: const Icon(Icons.chevron_left_outlined),
                      label: Text(
                        'Reset',
                        style: Theme.of(context).textTheme.titleSmall,
                      )),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.onSecondary)),
                    onPressed: _save,
                    label: const Text('Add'),
                    icon: const Icon(
                      Icons.done_all_outlined,
                      size: 12,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//  for (var list in Category.values)
//                         DropdownMenuItem(
//                           value: Category.diary,
//                           child: Row(
//                             children: [
//                               SizedBox(
//                                   height: 12,
//                                   width: 12,
//                                   child: Icon(icondata[list])),
//                               const SizedBox(
//                                 width: 25,
//                               ),
//                             // for ( var names in enumname)
//                                 Text( names.toString())
//                             ],
//                           ),
//                         )
