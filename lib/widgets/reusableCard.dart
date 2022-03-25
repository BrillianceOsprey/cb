import 'package:flutter/material.dart';

class ReusableCardWidget extends StatelessWidget {
  const ReusableCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                  height: 100,
                  width: 50,
                  child: Image.asset('images/yoma_land.jpg')),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Utility Infrastructure Manager'),
                  Text('YOMA Land'),
                  Text('Yangon')
                ],
              ),
              const Spacer(),
              ElevatedButton(onPressed: () {}, child: Text('View'))
            ],
          ),
        ],
      ),
    );
  }
}
