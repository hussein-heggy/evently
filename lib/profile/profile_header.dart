import 'package:evently/app_theme.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.23,
      decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(64),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(
              "assets/images/route_profile.png",
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hussein Heggy",
                  style: textTheme.titleLarge,
                ),
                Text(
                  "heggy36@gmail.com",
                  style: textTheme.bodyMedium?.copyWith(color: AppTheme.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
