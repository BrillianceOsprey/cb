import 'package:flutter/material.dart';
import 'package:job_click/models/company_data.dart';
import 'package:job_click/screens/compay_details.dart';
import 'package:job_click/util/constants.dart';
import 'package:provider/provider.dart';

class CompanyCardWidget extends StatefulWidget {
  const CompanyCardWidget({Key? key}) : super(key: key);

  @override
  State<CompanyCardWidget> createState() => _CompanyCardWidgetState();
}

class _CompanyCardWidgetState extends State<CompanyCardWidget> {
  List<String> _list = List.generate(100, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          CompanyDetails.id,
        );
      },
      child: GridView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 60,
                      child: Image.asset(
                        'images/yoma_land.jpg',
                      ),
                    ),
                    Text(
                      'Company ${_list[index]}',
                      style: kCompanyCardText.copyWith(color: Colors.green),
                    ),
                    Text(
                      'Description ${_list[index]}',
                      style: kCompanyCardText.copyWith(),
                    )
                  ],
                )),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      ),
    );
  }
}
