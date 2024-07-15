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
                    child: DropdownButtonFormField(
                        items: [
                          for (var cats in catstest.entries)
                            DropdownMenuItem(
                              enabled: true,
                              value: catstest.values,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 12,
                                    width: 12,
                                    child: Icon(
                                      cats.value.Icon,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  )
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
                        onChanged: (value) => {}),
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