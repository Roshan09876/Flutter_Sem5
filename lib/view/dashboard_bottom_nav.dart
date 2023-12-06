import 'package:flutter/material.dart';
import 'package:secondapp/view/bottomview/cart_view.dart';
import 'package:secondapp/view/bottomview/example_view.dart';
import 'package:secondapp/view/bottomview/home_view.dart';
import 'package:secondapp/view/bottomview/profile_view.dart';

class DashboardBottomNav extends StatefulWidget {
  const DashboardBottomNav({Key? key}) : super(key: key);

  @override
  State<DashboardBottomNav> createState() => _DashboardBottomNavState();
}

class _DashboardBottomNavState extends State<DashboardBottomNav> {
  int _selectedIndex = 0;

  // Making list for bottomnav through list
  List<Widget> lstBottomScreen = [
    HomeView(),
    CartView(),
    ProfileView(),
    ExampleView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: lstBottomScreen[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 154, 126, 126),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 35,
                color: _selectedIndex == 0 ? Colors.white : Colors.black,
              ),
              onPressed: () {
                _onNavItemTapped(0);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_bag,
                size: 35,
                color: _selectedIndex == 1 ? Colors.white : Colors.black,
              ),
              onPressed: () {
                _onNavItemTapped(1);
              },
            ),
            SizedBox(width: 40.0), // Adjust the space between the middle icons
            IconButton(
              icon: Icon(Icons.verified_user,
                  size: 35,
                  color: _selectedIndex == 2 ? Colors.white : Colors.black),
              onPressed: () {
                _onNavItemTapped(2);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.analytics,
                size: 35,
                color: _selectedIndex == 3 ? Colors.white : Colors.black,
              ),
              onPressed: () {
                _onNavItemTapped(3);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
