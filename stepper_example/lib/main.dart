import 'package:flutter/material.dart';
import 'package:stepper_example/home_page.dart';
import 'package:stepper_example/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) => SplashScreen(),
        'homepage': (context) => HomePage(),
      },
    ),
  );
}
