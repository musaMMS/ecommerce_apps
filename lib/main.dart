
import 'package:ecommerce_apps/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'OpeningScreen/welcome_secreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const WelcomeSecreen(),
      initialBinding: ControllerBinder(),
    );
  }
}

