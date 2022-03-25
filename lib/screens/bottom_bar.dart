import 'package:flutter/material.dart';
import 'package:job_click/screens/companies_screen.dart';
import 'package:job_click/screens/jobs_screen.dart';
import 'package:job_click/screens/search_screen.dart';
import 'package:job_click/screens/my_account_screen.dart';
import 'package:job_click/screens/search_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedPageIndex = 0;
  final List<Widget> _pages = <Widget>[
    const SearchScreen(),
    const JobScreen(),
    const CompaniesScreen(),
    const MyAccountScreen(),
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedPageIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.green,
            // onTap: _selectedPage,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            // currentIndex: _selectedPageIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(CompaniesScreen.id);
                    },
                    icon: Icon(null),
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'Jobs',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'Companies',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(null),
                  label: 'My Account',
                  backgroundColor: Colors.green),
            ]),
      ),
    );
  }
}
