import 'package:flutter/material.dart';

class CompanyDetails extends StatefulWidget {
  const CompanyDetails({Key? key}) : super(key: key);
  static const String id = 'company_detail';

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  ScrollController? scrollController;
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text('Click'),
          // ),
          body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                top = constraints.biggest.height;

                return Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          // ColorClass.starterColor,
                          // ColorClass.endColor,
                          Color.fromARGB(255, 4, 196, 29),
                          Color.fromARGB(255, 33, 158, 5)
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                      color: Colors.white),
                  child: FlexibleSpaceBar(
                    centerTitle: true,
                    title: AnimatedOpacity(
                      opacity: top <= 110.0 ? 1.0 : 0,
                      duration: const Duration(milliseconds: 400),
                      child: Column(
                        children: [
                          Container(
                            height: kToolbarHeight / 1.4,
                            width: kToolbarHeight / 1.4,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 1.0,
                                )
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/yoma_land.jpg'),
                              ),
                            ),
                          ),
                          // Text(
                          //   'YOMA Land',
                          //   style: TextStyle(fontSize: 10),
                          // )
                        ],
                      ),
                    ),
                    background: const Image(
                      image: AssetImage('images/yoma_land.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Column(
                  children: const [
                    Text(
                      'YOMA Land',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Text('Accounting, Audit, Tax Services'),
                    Text('Hlaing, Yangon')
                  ],
                ),
                Card(
                  elevation: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      aboutCompany(
                        iconData: Icons.person,
                        text1: 'Employee',
                        text2: '50',
                      ),
                      aboutCompany(
                        iconData: Icons.factory,
                        text1: 'Industory',
                        text2: 'Acounting Audit, Tax Services',
                      ),
                      aboutCompany(
                        iconData: Icons.location_city,
                        text1: 'Address',
                        text2: 'No,11, Paxundaung Township, \n Yangon, Myanmar',
                      ),
                      aboutCompany(
                        iconData: Icons.browser_updated,
                        text1: 'Industory',
                        text2: 'Acounting Audit, Tax Services',
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text('About'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text('Life is full of with shit'),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5))),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5, top: 14),
                          child: Text('Opened Job'),
                        ),
                      ),
                      Container(
                        constraints:
                            const BoxConstraints(minHeight: 20, maxHeight: 400),
                        child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: ((BuildContext context, index) {
                              return const OpenJobsCard();
                            })),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class OpenJobsCard extends StatelessWidget {
  const OpenJobsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 1.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Web Application Manager"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(child: Text('Full Time'))),
                    // const Spacer(),
                    SizedBox(
                      width: 10,
                    ),
                    const Text('MMK 20,000,00 - 30,000,00'),
                  ],
                ),
              ],
            ),
          ),
          const Text('Aug,3,2025')
        ],
      ),
    );
  }
}

class aboutCompany extends StatelessWidget {
  aboutCompany(
      {Key? key,
      required this.iconData,
      required this.text1,
      required this.text2})
      : super(key: key);
  IconData iconData;
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(
            width: 10,
          ),
          Text(text1),
          const SizedBox(
            width: 20,
          ),
          Text(text2)
        ],
      ),
    );
  }
}
