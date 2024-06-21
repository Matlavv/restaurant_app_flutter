import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/auth/login_or_register.dart';
import 'package:restaurant_app/models/restaurant.dart';
import 'package:restaurant_app/themes/theme_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    //theme
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    //restaurant
    ChangeNotifierProvider(create: (context) => Restaurant()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
