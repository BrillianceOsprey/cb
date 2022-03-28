import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:job_click/widgets/companyCard.dart';

class CompnayLists extends StatefulWidget {
  const CompnayLists({Key? key}) : super(key: key);
  static const id = 'job_screen';

  @override
  State<CompnayLists> createState() => _CompnayListsState();
}

class _CompnayListsState extends State<CompnayLists> {
  String? selectedLocation;
  String? selectedIndustory;
  var location = ['Yangon', 'Mandalay', 'Sagaing', 'Naypyitaw'];
  var industory = ['Yoma Land', 'World Jim', 'Ubrand', 'Mevius', 'Carabao'];

  // List<String> _list = List.generate(20, (index) => "Company $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    width: 100,
                  ),
                  const SizedBox(
                    height: 50,
                    width: 100,
                    child: Image(image: AssetImage('images/logo-new.png')),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomDropdownButton2(
                        hint: 'By Location ',
                        value: selectedLocation,
                        dropdownItems: location,
                        onChanged: (value) {
                          setState(() {
                            selectedLocation = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: CustomDropdownButton2(
                          hint: 'By Industory ',
                          value: selectedIndustory,
                          dropdownItems: industory,
                          onChanged: (value) {
                            setState(() {
                              selectedIndustory = value!;
                            });
                          }),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Search'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    const Text('All Companies'),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {}, child: Text('Reset'.toUpperCase()))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    const Text('4 Jobs For You'),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.green),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.white,
                            iconSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text('2/3 Pages'),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.green),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                            color: Colors.white,
                            iconSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Expanded(child: const CompanyCardWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
