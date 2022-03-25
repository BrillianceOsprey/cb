import 'package:flutter/material.dart';
import 'package:job_click/screens/companies_screen.dart';
import 'package:job_click/screens/compay_details.dart';
import 'package:job_click/screens/search_screen.dart';

import 'bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  static const String splashScreen = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return const CompaniesScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/splashScreen.png',
            fit: BoxFit.fill,
          ),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              child: const CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.green,
                strokeWidth: 5,
              )),
        ],
      ),
    );
  }
}
