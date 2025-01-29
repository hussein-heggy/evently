import 'package:evently/home/home_header.dart';
import 'package:evently/widgets/event_item.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeader(),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, index) => EventItem(),
              itemCount: 10,
              separatorBuilder: (_, index) => const SizedBox(
                height: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
