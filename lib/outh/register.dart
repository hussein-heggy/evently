import 'package:evently/app_theme.dart';
import 'package:evently/home_screen.dart';
import 'package:evently/outh/login_page.dart';
import 'package:evently/widgets/default_elevated_button.dart';
import 'package:evently/widgets/default_text_form_field.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  static String routeName = "/register";
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void navigateToHome() {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Logo.png",
                  width: width * .34,
                  height: height * .2,
                ),
                const SizedBox(
                  height: 24,
                ),
                DefaultTextFormField(
                  controller: nameController,
                  hintText: "Name",
                  prefixIconImageName: "profile",
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return "name con't leth than 3";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                DefaultTextFormField(
                  controller: emailController,
                  hintText: "Email",
                  prefixIconImageName: "email",
                  validator: (value) {
                    if (value == null || value.length < 5) {
                      return "email con't leth than5";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                DefaultTextFormField(
                  controller: passwordController,
                  hintText: "Password",
                  prefixIconImageName: "lock",
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.trim().length < 8) {
                      return "password con't leth than 8";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                DefaultElevatedButton(
                    onPressed: navigateToHome, lable: "Register"),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already Have Account ?",
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context)
                          .pushReplacementNamed(LoginPage.routeName),
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
