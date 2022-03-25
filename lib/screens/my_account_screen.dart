import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);
  static const id = 'my_account';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Hello My account')),
    );
  }
}
