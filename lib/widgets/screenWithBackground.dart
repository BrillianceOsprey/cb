import 'package:flutter/material.dart';

class ScreenWithBackgroundImage extends StatelessWidget {
  const ScreenWithBackgroundImage(
      {Key? key, required this.pageInfoWidget, required this.pageINfoHeight})
      : super(key: key);
  final Widget pageInfoWidget;
  final double? pageINfoHeight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: pageINfoHeight,
          // padding: EdgeInsets.,
        ),
      ),
    );
  }
}
