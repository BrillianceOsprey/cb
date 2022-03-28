import 'package:flutter/material.dart';
import 'package:job_click/screens/compay_details.dart';
import 'package:job_click/screens/search_screen.dart';
import 'package:job_click/screens/company_list.dart';
import 'package:job_click/screens/my_account_screen.dart';
import 'package:job_click/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: SplashScreen.splashScreen,
      initialRoute: SplashScreen.splashScreen,
      routes: {
        SplashScreen.splashScreen: (context) => const SplashScreen(),
        SearchScreen.id: (context) => const SearchScreen(),
        MyAccountScreen.id: (context) => const MyAccountScreen(),
        CompnayLists.id: (context) => const CompnayLists(),
        CompanyDetails.id: (context) => const CompanyDetails()
      },
    );
  }
}
