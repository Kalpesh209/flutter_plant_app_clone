import 'package:flutter/material.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_plant_clone_app/Presentation/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
      ),
      home: SafeArea(
        child: SplashScreen(),
      ),
    );
  }
}
