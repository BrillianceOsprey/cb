import 'package:flutter/material.dart';
import 'package:job_click/screens/company_list.dart';
import 'package:job_click/screens/jobs_screen.dart';
import 'package:job_click/screens/search_screen.dart';
import 'package:job_click/screens/my_account_screen.dart';

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
    const CompnayLists(),
    const MyAccountScreen(),
  ];

  void _selectedPage(int index) {
    // setState(() {
    //   _selectedPageIndex = index;
    // });
    if (index == 0) {
      setState(() {
        _selectedPageIndex = index;
      });
    } else if (index == 1) {
      setState(() {
        // _selectedPageIndex = index;
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const JobScreen()));
      });
      print(_selectedPageIndex);
    } else if (index == 2) {
      setState(() {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CompnayLists()));
      });
    } else if (index == 3) {
      setState(() {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const MyAccountScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        // selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        unselectedLabelStyle: TextStyle(color: Colors.red),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(null),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(null),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(null),
            label: 'Companies',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(null),
            label: 'My Account',
          ),
        ],
        showUnselectedLabels: true,
      ),
    );
  }
}
