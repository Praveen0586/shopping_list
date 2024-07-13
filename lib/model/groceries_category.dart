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
  Category.backing: Icon(Icons.bakery_dining_rounded),
  Category.breads: Icon(Icons.breakfast_dining),
  Category.diary: Icon(Icons.multitrack_audio),
  Category.sices: Icon(Icons.room_service_sharp),
  Category.vegitables: Icon(Icons.view_agenda_outlined),
  Category.meat: Icons.medication_liquid,
  Category.households: Icons.house_outlined,
  Category.toileries: Icons.trip_origin_outlined,
  Category.snacks: Icons.screen_search_desktop,
  Category.sauces: Icons.battery_std_outlined
};
