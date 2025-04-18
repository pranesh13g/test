import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/features/auth/login_screen.dart';
import 'package:test/splash_screen.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(360, 690),
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test app',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
