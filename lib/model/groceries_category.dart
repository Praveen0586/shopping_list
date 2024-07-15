import 'package:flutter/material.dart';

enum Category {
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

const icondata = {
  Category.backing: Icons.bakery_dining_rounded,
  Category.breads: Icons.breakfast_dining,
  Category.diary: Icons.multitrack_audio,
  Category.sices: Icons.room_service_sharp,
  Category.vegitables: Icons.view_agenda_outlined,
  Category.meat: Icons.medication_liquid,
  Category.households: Icons.house_outlined,
  Category.toileries: Icons.trip_origin_outlined,
  Category.snacks: Icons.screen_search_desktop,
  Category.sauces: Icons.battery_std_outlined,
  Category.fruits: Icons.shopping_basket_outlined
};

List<Map> enumname = [
  {'name': ' fruits', 'Icon': Icons.shopping_basket_outlined},
  {'name': 'diary', 'Icon': Icons.multitrack_audio},
  {'name': 'sices', 'Icon': Icons.room_service_sharp},
  {'name': 'vegitables', 'Icon': Icons.view_agenda_outlined},
  {'name': 'meat', 'Icon': Icons.medication_liquid},
  {'name': 'backing', 'Icon': Icons.bakery_dining_rounded},
  {'name': 'sauces', 'Icon': Icons.battery_std_outlined},
  {'name': 'snacks', 'Icon': Icons.screen_search_desktop},
  {'name': 'breads', 'Icon': Icons.breakfast_dining},
  {'name': 'toileries', 'Icon': Icons.trip_origin_outlined},
  {'name': 'households', 'Icon': Icons.house_outlined}
];



class ListTrait {
  const ListTrait(this.title, this.id, this.quantity, this.category);

  final String title;
  final String id;
  final int quantity;
  final Category category;
}

const groceryList = [
  ListTrait('Milk', 'c1', 5, Category.backing),
  ListTrait('Something', 'c2', 6, Category.breads),
  ListTrait('Newthing', 'c3', 6, Category.sices),
  ListTrait('Backing', 'c1', 5, Category.backing),
  ListTrait('Diary', 'c2', 5, Category.diary),
  ListTrait('Fruits', 'c3', 5, Category.fruits),
  ListTrait('Backing', 'c1', 7, Category.backing),
  ListTrait('Households', 'c2', 8, Category.households),
  ListTrait('Meat', 'c3', 6, Category.meat),
  ListTrait('Milk', 'c1', 4, Category.backing),
  ListTrait('Sauce', 'c2', 9, Category.sauces),
  ListTrait('Sices', 'c3', 3, Category.sices),
  ListTrait('Backing', 'c1', 5, Category.backing),
  ListTrait('Snacks', 'c2', 8, Category.snacks),
  ListTrait('Sices', 'c3', 9, Category.sices),
  ListTrait('Backing', 'c1', 4, Category.backing),
  ListTrait('Snacks', 'c2', 6, Category.snacks),
  ListTrait('Toilering', 'c3', 1, Category.toileries),
  ListTrait('Backing', 'c1', 2, Category.backing),
  ListTrait('Vegitables', 'c2', 3, Category.vegitables),
  ListTrait('Sauces', 'c3', 4, Category.sauces),
  ListTrait('Milk', 'c1', 5, Category.backing),
  ListTrait('Something', 'c2', 6, Category.breads),
  ListTrait('Newthing', 'c3', 7, Category.sices),
  ListTrait('Backing', 'c1', 8, Category.backing),
  ListTrait('Diary', 'c2', 9, Category.diary),
  ListTrait('Fruits', 'c3', 32, Category.fruits),
  ListTrait('Backing', 'c1', 36, Category.backing),
  ListTrait('Households', 'c2', 26, Category.households),
  ListTrait('Meat', 'c3', 26, Category.meat),
  ListTrait('Milk', 'c1', 26, Category.backing),
  ListTrait('Sauce', 'c2', 19, Category.sauces),
  ListTrait('Sices', 'c3', 4, Category.sices),
  ListTrait('Backing', 'c1', 21, Category.backing),
  ListTrait('Snacks', 'c2', 36, Category.snacks),
  ListTrait('Sices', 'c3', 11, Category.sices),
  ListTrait('Backing', 'c1', 56, Category.backing),
  ListTrait('Snacks', 'c2', 9, Category.snacks),
  ListTrait('Toilering', 'c3', 64, Category.toileries),
  ListTrait('Backing', 'c1', 8, Category.backing),
  ListTrait('Vegitables', 'c2', 9, Category.vegitables),
  ListTrait('Sauces', 'c3', 6, Category.sauces),
  ListTrait('Milk', 'c1', 4, Category.backing),
  ListTrait('Something', 'c2', 6, Category.breads),
  ListTrait('Newthing', 'c3', 1, Category.sices),
  ListTrait('Backing', 'c1', 6, Category.backing),
  ListTrait('Diary', 'c2', 4, Category.diary),
  ListTrait('Fruits', 'c3', 16, Category.fruits),
  ListTrait('Backing', 'c1', 5, Category.backing),
  ListTrait('Households', 'c2', 3, Category.households),
  ListTrait('Meat', 'c3', 16, Category.meat),
  ListTrait('Milk', 'c1', 15, Category.backing),
  ListTrait('Sauce', 'c2', 9, Category.sauces),
  ListTrait('Sices', 'c3', 4, Category.sices),
  ListTrait('Backing', 'c1', 5, Category.backing),
  ListTrait('Snacks', 'c2', 9, Category.snacks),
  ListTrait('Sices', 'c3', 61, Category.sices),
  ListTrait('Backing', 'c1', 7, Category.backing),
  ListTrait('Snacks', 'c2', 61, Category.snacks),
  ListTrait('Toilering', 'c3', 61, Category.toileries),
  ListTrait('Backing', 'c1', 13, Category.backing),
  ListTrait('Vegitables', 'c2', 2, Category.vegitables),
  ListTrait('Sauces', 'c3', 6, Category.sauces),
];
