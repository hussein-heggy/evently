import 'package:evently/app_theme.dart';
import 'package:evently/models/category_model.dart';
import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  CategoryModel categoryModel;
  bool isSelected;
  Color selectedBackgroundColor;
  Color selectedForegroundColor;
  Color unselectedForegroundColor;
  TabBarItem(
      {required this.categoryModel,
      required this.isSelected,
      required this.selectedBackgroundColor,
      required this.selectedForegroundColor,
      required this.unselectedForegroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: isSelected ? selectedBackgroundColor : Colors.transparent,
          border: isSelected
              ? null
              : Border.all(color: unselectedForegroundColor, width: 1),
          borderRadius: BorderRadius.circular(46)),
      child: Row(
        children: [
          Icon(
            categoryModel.icon,
            color: isSelected
                ? selectedForegroundColor
                : unselectedForegroundColor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            categoryModel.name,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isSelected
                      ? selectedForegroundColor
                      : unselectedForegroundColor,
                ),
          ),
        ],
      ),
    );
  }
}
