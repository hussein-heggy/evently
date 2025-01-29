import 'package:evently/home/tab_bar_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  String id;
  String name;
  IconData icon;
  String imageName;
  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.imageName,
  });
  static List<CategoryModel> categories = [
    CategoryModel(
        id: "1",
        name: "Sport",
        icon: Icons.sports_basketball_outlined,
        imageName: "sport_light"),
    CategoryModel(
        id: "2",
        name: "Birthday",
        icon: Icons.cake_outlined,
        imageName: "birthday_light"),
    CategoryModel(
        id: "3",
        name: "Meeting",
        icon: Icons.laptop_mac,
        imageName: "meeting_light"),
    CategoryModel(
        id: "4",
        name: "Gaming",
        icon: Icons.videogame_asset_outlined,
        imageName: "gaming_light"),
    CategoryModel(
        id: "5",
        name: "Eating",
        icon: Icons.food_bank_outlined,
        imageName: "eating_light"),
    CategoryModel(
        id: "6",
        name: "Holiday",
        icon: Icons.beach_access_outlined,
        imageName: "holiday_light"),
    CategoryModel(
        id: "7",
        name: "Exhibition",
        icon: Icons.art_track_outlined,
        imageName: "exhibition_light"),
    CategoryModel(
        id: "8",
        name: "Work Shop",
        icon: Icons.lightbulb_outlined,
        imageName: "work_light"),
    CategoryModel(
        id: "9",
        name: "Book Club",
        icon: Icons.auto_stories_outlined,
        imageName: "book_light"),
  ];
}
