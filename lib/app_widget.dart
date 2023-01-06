import 'package:flutter/material.dart';
import 'package:flutter_studies_1/home_page.dart';
import 'package:flutter_studies_1/login_page.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  // final String title;
  // const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            });
      },
    );
  }
}
