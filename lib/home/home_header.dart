import 'package:evently/app_theme.dart';
import 'package:evently/home/tab_bar_item.dart';
import 'package:evently/models/category_model.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.only(left: 16, bottom: 16),
      decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      width: double.infinity,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back ✨",
              style: textTheme.labelLarge!.copyWith(color: AppTheme.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Hussein Heggy",
              style: textTheme.titleLarge,
            ),
            SizedBox(
              height: 8,
            ),
            DefaultTabController(
              length: CategoryModel.categories.length,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.center,
                onTap: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                tabs: CategoryModel.categories
                    .map((category) => TabBarItem(
                          categoryModel: category,
                          isSelected: currentIndex ==
                              CategoryModel.categories.indexOf(category),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
