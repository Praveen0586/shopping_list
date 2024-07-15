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

const catstest = {
  Category.backing: Cats('Backing', Icons.bakery_dining_outlined),
  Category.diary: Cats('Diary', Icons.multitrack_audio),
  Category.breads: Cats('breads', Icons.breakfast_dining_outlined),
  Category.fruits: Cats(' Fruits', Icons.shopping_basket_outlined),
  Category.sices: Cats('Sices', Icons.room_service_outlined),
  Category.vegitables: Cats('Vegitables', Icons.view_agenda_outlined),
  Category.meat: Cats('Meat', Icons.food_bank_outlined),
  Category.sauces: Cats('Sauces', Icons.water_drop_outlined),
  Category.toileries: Cats('Toileries', Icons.circle_outlined),
  Category.snacks: Cats('Snacks', Icons.screen_search_desktop_outlined),
  Category.households: Cats('House Holds', Icons.house_outlined)
};

class Cats {
  const Cats(this.title, this.Icon);

  final String title;
  final IconData Icon;
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

const names = {
  Category.backing: 'Backing',
  Category.breads: 'Breads',
  Category.diary: 'Diary',
  Category.fruits: 'Fruits',
  Category.households: 'House Holds',
  Category.meat: 'Meat',
  Category.sauces: 'Sauces',
  Category.sices: 'Sices',
  Category.snacks: 'Snacks',
  Category.toileries: 'Toileries',
  Category.vegitables: 'Vegitables'
};

List<Map> enumname = [
  {'name': ' fruits'},
  {'name': 'diary'},
  {'name': 'sices'},
  {'name': 'vegitables'},
  {'name': 'meat'},
  {'name': 'backing'},
  {'name': 'sauces'},
  {'name': 'snacks'},
  {'name': 'breads'},
  {'name': 'toileries'},
  {'name': 'households'}
];

List<String> grocerynames = [
  ' fruits',
  'diary',
  'sices',
  'vegitables',
  'meat',
  'backing',
  'sauces',
  'snacks',
  'breads',
  'breads',
  'toileries',
  'households'
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
