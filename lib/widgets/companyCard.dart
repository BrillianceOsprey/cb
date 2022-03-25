import 'package:flutter/material.dart';

class CompanyCardWidget extends StatelessWidget {
  const CompanyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // image: DecorationImage(
          //     image: AssetImage(
          //       'images/yoma_land.jpg',
          //     ),
          //     fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              child: Image(
                image: AssetImage('images/yoma_land.jpg'),
              ),
            ),
            Text('Yoma Land'),
            Text('Fashtion Design &amp: Clothing')
          ],
        ),
      ),
    );
  }
}
