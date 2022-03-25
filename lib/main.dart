import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_click/screens/compay_details.dart';
import 'package:job_click/screens/search_screen.dart';
import 'package:job_click/screens/companies_screen.dart';
import 'package:job_click/screens/my_account_screen.dart';
import 'package:job_click/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: SplashScreen.splashScreen,
      initialRoute: SplashScreen.splashScreen,
      routes: {
        SplashScreen.splashScreen: (context) => SplashScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        MyAccountScreen.id: (context) => MyAccountScreen(),
        CompaniesScreen.id: (context) => CompaniesScreen(),
      },
    );
  }
}
