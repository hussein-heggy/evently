import 'package:evently/app_theme.dart';
import 'package:evently/home_screen.dart';
import 'package:evently/outh/register.dart';
import 'package:evently/widgets/default_elevated_button.dart';
import 'package:evently/widgets/default_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String routeName = "/login";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    void navigateToHome() {
      if (formKey.currentState!.validate()) {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      }
    }

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
                  onPressed: navigateToHome,
                  lable: "Login",
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t Have Account ?",
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context)
                          .pushReplacementNamed(Register.routeName),
                      child: const Text(
                        "Create Account",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppTheme.primary,
                        thickness: 1,
                        indent: width * .1,
                        endIndent: width * .01,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Or",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppTheme.primary),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppTheme.primary,
                        thickness: 1,
                        indent: width * .01,
                        endIndent: width * .1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
