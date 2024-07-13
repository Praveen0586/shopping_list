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
  Category.sauces: Icons.battery_std_outlined
};

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
  ListTrait('Newthing', 'c3', 6, Category.sices)
];
