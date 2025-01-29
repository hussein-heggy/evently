import 'package:evently/app_theme.dart';
import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {
  EventItem();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: screenSize.height * 0.25,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/sport_light.png",
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 1, color: AppTheme.primary)),
        ),
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: AppTheme.white, borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Text(
                "21",
                style: textTheme.titleSmall!.copyWith(color: AppTheme.primary),
              ),
              Text(
                "Nov",
                style: textTheme.bodySmall!.copyWith(color: AppTheme.primary),
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppTheme.white, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Meeting for Updating The Development Method",
                    style: textTheme.labelLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.favorite_outline_outlined,
                  color: AppTheme.primary,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
