import 'dart:ffi';

import 'package:evently/app_theme.dart';
import 'package:evently/home/tab_bar_item.dart';
import 'package:evently/models/category_model.dart';
import 'package:evently/widgets/default_elevated_button.dart';
import 'package:evently/widgets/default_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class CreateEvent extends StatefulWidget {
  static String routeName = "/create_event";
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  int currentIndex = 0;
  CategoryModel selectedCategory = CategoryModel.categories.first;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  DateFormat dateFormat = DateFormat("d/MM/yyyy");
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Event"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/${selectedCategory.imageName}.png",
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.22,
                fit: BoxFit.fill,
              ),
            ),
          ),
          DefaultTabController(
            length: CategoryModel.categories.length,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              tabAlignment: TabAlignment.center,
              padding: EdgeInsets.only(left: 10),
              labelPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              onTap: (index) {
                currentIndex = index;
                selectedCategory = CategoryModel.categories[index];
                setState(() {});
              },
              tabs: CategoryModel.categories
                  .map((category) => TabBarItem(
                        categoryModel: category,
                        isSelected: currentIndex ==
                            CategoryModel.categories.indexOf(category),
                        selectedBackgroundColor: AppTheme.primary,
                        selectedForegroundColor: AppTheme.white,
                        unselectedForegroundColor: AppTheme.primary,
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Title",
                        style: textTheme.bodyMedium,
                      ),
                      DefaultTextFormField(
                        controller: titleController,
                        hintText: "Evene Title",
                        prefixIconImageName: "edete",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Title can not be null";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Description",
                        style: textTheme.bodyMedium,
                      ),
                      DefaultTextFormField(
                        controller: descriptionController,
                        hintText: "Event Description",
                        maxLines: 4,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Discription can not be null";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/calendar.svg",
                            width: 24,
                            height: 24,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Event Date",
                            style: textTheme.bodyMedium,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () async {
                              DateTime? date = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime.now(),
                                  lastDate:
                                      DateTime.now().add(Duration(days: 365)),
                                  initialDate: selectedDate ?? DateTime.now(),
                                  initialEntryMode:
                                      DatePickerEntryMode.calendarOnly);
                              if (date != null) {
                                selectedDate = date;
                                setState(() {});
                              }
                            },
                            child: Text(
                              selectedDate == null
                                  ? "Chose Date"
                                  : dateFormat.format(selectedDate!),
                              style: textTheme.bodyMedium!
                                  .copyWith(color: AppTheme.primary),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/clock.svg",
                            width: 24,
                            height: 24,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Event Time",
                            style: textTheme.bodyMedium,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () async {
                              TimeOfDay? time = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if (time != null) {
                                selectedTime = time;
                                setState(() {});
                              }
                            },
                            child: Text(
                              selectedTime == null
                                  ? "Chose Time"
                                  : selectedTime!.format(context),
                              style: textTheme.bodyMedium!
                                  .copyWith(color: AppTheme.primary),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      DefaultElevatedButton(
                          onPressed: createEvent, lable: "Add Event"),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void createEvent() {
    if (formKey.currentState!.validate() &&
        selectedDate != null &&
        selectedTime != null) {}
  }
}
