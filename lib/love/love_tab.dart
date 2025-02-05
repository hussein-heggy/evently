import 'package:evently/widgets/default_text_form_field.dart';
import 'package:evently/widgets/event_item.dart';
import 'package:flutter/material.dart';

class LoveTab extends StatelessWidget {
  const LoveTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16, top: 16),
          child: Column(
            children: [
              DefaultTextFormField(
                onChanged: (value) {},
                hintText: "Search for Event",
                prefixIconImageName: "search",
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (_, index) => EventItem(),
                  itemCount: 10,
                  separatorBuilder: (_, index) => const SizedBox(
                    height: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
