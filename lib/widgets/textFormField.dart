import 'package:flutter/material.dart';

class textFormField extends StatelessWidget {
  const textFormField({Key? key, this.decoration}) : super(key: key);
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        height: 30,
        width: 200,
        child: TextFormField(decoration: decoration),
      ),
    );
  }
}
