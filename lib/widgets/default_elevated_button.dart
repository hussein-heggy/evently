import 'package:evently/app_theme.dart';
import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  String lable;
  VoidCallback onPressed;
  DefaultElevatedButton(
      {required this.onPressed, required this.lable, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height * .06),
      ),
      onPressed: onPressed,
      child: Text(
        lable,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
