import 'package:flutter/material.dart';
import 'package:shopping_list/datas/categories.dart';
import 'package:line_icons/line_icons.dart';

enum Categories {
  fruits,
  diary,
  sices,
  vegitables,
  meat,
  backing,
  sauces,
  snacks,
  breads,
  toileries,
  households
}

const catstest = {
  Categories.backing: Category('Backing', Icons.bakery_dining_outlined),
  Categories.diary: Category('Diary', Icons.multitrack_audio),
  Categories.breads: Category('breads', Icons.breakfast_dining_outlined),
  Categories.fruits: Category(' Fruits', Icons.shopping_basket_outlined),
  Categories.sices: Category('Sices', Icons.room_service_outlined),
  Categories.vegitables: Category('Vegitables', Icons.view_agenda_outlined),
  Categories.meat: Category('Meat', Icons.food_bank_outlined),
  Categories.sauces: Category('Sauces', Icons.water_drop_outlined),
  Categories.toileries: Category('Toileries', Icons.bathtub_outlined),
  Categories.snacks: Category('Snacks', Icons.screen_search_desktop_outlined),
  Categories.households: Category('House Holds', Icons.house_outlined)
};

const icondata = {
  Categories.backing: Icons.bakery_dining_outlined,
  Categories.breads: Icons.breakfast_dining_outlined,
  Categories.diary: Icons.multitrack_audio,
  Categories.sices: Icons.room_service_outlined,
  Categories.vegitables: Icons.view_agenda_outlined,
  Categories.meat: Icons.food_bank_outlined,
  Categories.households: Icons.house_outlined,
  Categories.toileries: LineIcons.bath,
  Categories.snacks: Icons.screen_search_desktop_outlined,
  Categories.sauces: Icons.battery_std_outlined,
  Categories.fruits: Icons.shopping_basket_outlined
};

// const names = {
//   Category.backing: 'Backing',
//   Category.breads: 'Breads',
//   Category.diary: 'Diary',
//   Category.fruits: 'Fruits',
//   Category.households: 'House Holds',
//   Category.meat: 'Meat',
//   Category.sauces: 'Sauces',
//   Category.sices: 'Sices',
//   Category.snacks: 'Snacks',
//   Category.toileries: 'Toileries',
//   Category.vegitables: 'Vegitables'
// };

// List<Map> enumname = [
//   {'name': ' fruits'},
//   {'name': 'diary'},
//   {'name': 'sices'},
//   {'name': 'vegitables'},
//   {'name': 'meat'},
//   {'name': 'backing'},
//   {'name': 'sauces'},
//   {'name': 'snacks'},
//   {'name': 'breads'},
//   {'name': 'toileries'},
//   {'name': 'households'}
// ];

// List<String> grocerynames = [
//   ' fruits',
//   'diary',
//   'sices',
//   'vegitables',
//   'meat',
//   'backing',
//   'sauces',
//   'snacks',
//   'breads',
//   'breads',
//   'toileries',
//   'households'
// ];

class ListTrait {
  const ListTrait(this.title, this.id, this.quantity, this.category);

  final String title;
  final String id;
  final int quantity;
  final Category category;
}

List<ListTrait> newgrocerylist = [
  
];

var groceryList = [
  ListTrait('Milk', 'c1', 5, catstest[Categories.backing]!),
  ListTrait(
    'Something',
    'c2',
    6,
    catstest[Categories.fruits]!,
  ),
  ListTrait('jk', DateTime.now().toString(), 5, catstest[Categories.meat]!)
];
