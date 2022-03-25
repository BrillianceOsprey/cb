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
                // job card
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const listViewBuilder())),

                // Expanded(
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: [
                //           const Text(
                //               'Let\'s join with our top employment '),
                //           const Spacer(),
                //           TextButton(
                //               onPressed: () {},
                //               child: const Text('View All'))
                //         ],
                //       ),
                //       GridView.builder(
                //           gridDelegate:
                //               const SliverGridDelegateWithMaxCrossAxisExtent(
                //                   maxCrossAxisExtent: 200,
                //                   childAspectRatio: 3 / 2,
                //                   crossAxisSpacing: 20,
                //                   mainAxisSpacing: 20),
                //           itemCount: 4,
                //           itemBuilder: (BuildContext ctx, index) {
                //             return CircularImage();
                //           })
                //     ],
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircularImage extends StatelessWidget {
  const CircularImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // CircleAvatar(
        //   backgroundImage: AssetImage(
        //     'images/yoma_land.jpg',
        //   ),
        // );
        Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        color: Colors.redAccent,
      ),
    );
  }
}

class listViewBuilder extends StatelessWidget {
  const listViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: ((BuildContext context, index) {
          return Container(child: const ReusableCardWidget());
        }));
  }
}
