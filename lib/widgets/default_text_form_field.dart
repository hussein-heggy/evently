import 'package:evently/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultTextFormField extends StatefulWidget {
  String hintText;
  int maxLines;
  TextEditingController? controller;
  String? prefixIconImageName;
  void Function(String)? onChanged;
  String? Function(String?)? validator;
  bool isPassword;
  DefaultTextFormField({
    required this.hintText,
    this.maxLines = 1,
    this.onChanged,
    this.controller,
    this.validator,
    this.prefixIconImageName,
    this.isPassword = false,
    super.key,
  });

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  late bool isObscureText = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: widget.onChanged,
      controller: widget.controller,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIconImageName == null
            ? null
            : SvgPicture.asset(
                "assets/icons/${widget.prefixIconImageName}.svg",
                width: 24,
                height: 24,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(AppTheme.grey, BlendMode.srcIn),
              ),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  isObscureText = !isObscureText;
                  setState(() {});
                },
                icon: Icon(
                  isObscureText
                      ? Icons.visibility_rounded
                      : Icons.visibility_off,
                  color: AppTheme.grey,
                ),
              )
            : null,
        hintText: widget.hintText,
      ),
      obscureText: isObscureText,
      validator: widget.validator,
    );
  }
}
