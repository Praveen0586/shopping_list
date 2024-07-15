import 'package:flutter/material.dart';
import 'package:shopping_list/datas/categories.dart';

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
  Categories.toileries: Category('Toileries', Icons.circle_outlined),
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
  Categories.toileries: Icons.circle_outlined,
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
  final Categories category;
}

const groceryList = [
  ListTrait('Milk', 'c1', 5, Categories.backing),
  ListTrait('Something', 'c2', 6, Categories.breads),
  ListTrait('Newthing', 'c3', 6, Categories.sices),
  ListTrait('Backing', 'c1', 5, Categories.backing),
  ListTrait('Diary', 'c2', 5, Categories.diary),
  ListTrait('Fruits', 'c3', 5, Categories.fruits),
  ListTrait('Backing', 'c1', 7, Categories.backing),
  ListTrait('Households', 'c2', 8, Categories.households),
  ListTrait('Meat', 'c3', 6, Categories.meat),
  ListTrait('Milk', 'c1', 4, Categories.backing),
  ListTrait('Sauce', 'c2', 9, Categories.sauces),
  ListTrait('Sices', 'c3', 3, Categories.sices),
  ListTrait('Backing', 'c1', 5, Categories.backing),
  ListTrait('Snacks', 'c2', 8, Categories.snacks),
  ListTrait('Sices', 'c3', 9, Categories.sices),
  ListTrait('Backing', 'c1', 4, Categories.backing),
  ListTrait('Snacks', 'c2', 6, Categories.snacks),
  ListTrait('Toilering', 'c3', 1, Categories.toileries),
  ListTrait('Backing', 'c1', 2, Categories.backing),
  ListTrait('Vegitables', 'c2', 3, Categories.vegitables),
  ListTrait('Sauces', 'c3', 4, Categories.sauces),
  ListTrait('Milk', 'c1', 5, Categories.backing),
  ListTrait('Something', 'c2', 6, Categories.breads),
  ListTrait('Newthing', 'c3', 7, Categories.sices),
  ListTrait('Backing', 'c1', 8, Categories.backing),
  ListTrait('Milk', 'c1', 5, Categories.backing),
  ListTrait('Something', 'c2', 6, Categories.breads),
  ListTrait('Newthing', 'c3', 6, Categories.sices),
  ListTrait('Backing', 'c1', 5, Categories.backing),
  ListTrait('Diary', 'c2', 5, Categories.diary),
  ListTrait('Fruits', 'c3', 5, Categories.fruits),
  ListTrait('Backing', 'c1', 7, Categories.backing),
  ListTrait('Households', 'c2', 8, Categories.households),
  ListTrait('Meat', 'c3', 6, Categories.meat),
  ListTrait('Milk', 'c1', 4, Categories.backing),
  ListTrait('Sauce', 'c2', 9, Categories.sauces),
  ListTrait('Sices', 'c3', 3, Categories.sices),
  ListTrait('Backing', 'c1', 5, Categories.backing),
  ListTrait('Snacks', 'c2', 8, Categories.snacks),
  ListTrait('Sices', 'c3', 9, Categories.sices),
  ListTrait('Backing', 'c1', 4, Categories.backing),
  ListTrait('Snacks', 'c2', 6, Categories.snacks),
  ListTrait('Toilering', 'c3', 1, Categories.toileries),
  ListTrait('Backing', 'c1', 2, Categories.backing),
  ListTrait('Vegitables', 'c2', 3, Categories.vegitables),
  ListTrait('Sauces', 'c3', 4, Categories.sauces),
  ListTrait('Milk', 'c1', 5, Categories.backing),
  ListTrait('Something', 'c2', 6, Categories.breads),
  ListTrait('Newthing', 'c3', 7, Categories.sices),
  ListTrait('Backing', 'c1', 8, Categories.backing),
];
