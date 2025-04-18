import 'package:evently/app_theme.dart';
import 'package:evently/create_event.dart';
import 'package:evently/home_screen.dart';
import 'package:evently/outh/login_page.dart';
import 'package:evently/outh/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EventlyApp());
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (_) => LoginPage(),
        Register.routeName: (_) => Register(),
        HomeScreen.routeName: (_) => HomeScreen(),
        CreateEvent.routeName: (_) => CreateEvent(),
      },
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
