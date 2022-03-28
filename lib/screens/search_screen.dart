import 'package:flutter/material.dart';
import 'package:job_click/util/constants.dart';
import 'package:job_click/widgets/reusableCard.dart';

import '../widgets/textFormField.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const id = 'home_screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final double containerHeight = MediaQuery.of(context).size.height;
    final cal = containerHeight / 1.29;
    print(cal);
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                    height: 40,
                    width: 150,
                    child: Image.asset('images/logo-new.png')),
                textFormField(
                  decoration: kTextFormFieldDecoration.copyWith(
                      hintText: 'Job title or key word '),
                ),
                textFormField(
                  decoration: kTextFormFieldDecoration.copyWith(
                      hintText: 'By Location'),
                ),
                textFormField(
                  decoration: kTextFormFieldDecoration.copyWith(
                      hintText: 'By Position'),
                ),
                Container(
                    height: 30,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Search Job')))
              ],
            ),
            //botton all
            Column(
              children: [
                // recent jobs
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Recent Jobs For You '),
                    const Spacer(),
                    TextButton(onPressed: () {}, child: const Text('View All'))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
