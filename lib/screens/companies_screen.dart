import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:job_click/widgets/companyCard.dart';

class CompaniesScreen extends StatefulWidget {
  const CompaniesScreen({Key? key}) : super(key: key);
  static const id = 'job_screen';

  @override
  State<CompaniesScreen> createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  String? selectedLocation;
  String? selectedIndustory;
  var location = ['Yangon', 'Mandalay', 'Sagaing', 'Naypyitaw'];
  var industory = ['Yoma Land', 'World Jim', 'Ubrand', 'Mevius', 'Carabao'];
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
              Row(
                children: [
                  CustomDropdownButton2(
                      hint: 'By Location ',
                      value: selectedLocation,
                      dropdownItems: location,
                      onChanged: (value) {
                        setState(() {
                          selectedLocation = value!;
                        });
                      }),
                  CustomDropdownButton2(
                      hint: 'By Location ',
                      value: selectedIndustory,
                      dropdownItems: industory,
                      onChanged: (value) {
                        setState(() {
                          selectedIndustory = value!;
                        });
                      }),
                  ElevatedButton(onPressed: () {}, child: const Text('Search'))
                ],
              ),
              Row(
                children: [
                  const Text('All Companies'),
                  const SizedBox(
                    width: 180,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Reset'))
                ],
              ),
              Row(
                children: [
                  Text('4 Jobs For You'),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      Text('2/3 Pages'),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  CompanyCardWidget(),
                  CompanyCardWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
