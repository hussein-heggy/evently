import 'package:evently/app_theme.dart';
import 'package:evently/profile/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppTheme.red,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Row(
                      children: [
                        Icon(Icons.logout, color: AppTheme.white),
                        SizedBox(width: 16),
                        Text(
                          "Logout",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: AppTheme.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
