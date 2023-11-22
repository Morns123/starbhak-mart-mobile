import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:starbhak_mart/addData.dart';
import 'package:starbhak_mart/cart.dart';
import 'package:starbhak_mart/home.dart';

// Nav

// class Nav extends StatefulWidget {
//   const Nav({Key? key}) : super(key: key);

//   @override
//   _NavState createState() => _NavState();
// }

// class _NavState extends State<Nav> {
//   int _selectedIndex = 0;
//   final List<Widget> _widgetOptions = <Widget>[Home(), Cart(), AddData()];

//   void _onItemTap(int Index) {
//     setState(() {
//       _selectedIndex = Index;
//     });
//   }

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.white,
//         buttonBackgroundColor: Colors.blue,
//         color: Colors.deepPurple,
//         items: <Widget>[
//           Icon(
//             Icons.home_outlined,
//             size: 30,
//             color: Colors.black,
//           ),
//           Icon(Icons.shopping_cart_outlined, size: 30, color: Colors.black),
//           Icon(Icons.addchart_outlined, size: 30, color: Colors.black),
//         ],
//         onTap: _onItemTap,
//       ),
//     );
//   }
// }

// Nav2

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Cart(),
    AddData(),
  ];

  bool _showBottomNavBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: _showBottomNavBar
          ? CurvedNavigationBar(
              color: const Color.fromRGBO(255, 152, 0, 1),
              backgroundColor: Colors.white,
              buttonBackgroundColor: Colors.green.shade200,
              index: _currentIndex,
              height: 50,
              items: <Widget>[
                Icon(Icons.home_outlined, size: 30),
                Icon(Icons.shopping_cart_outlined, size: 30),
                Icon(Icons.addchart_outlined, size: 30),
              ],
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                  if (index != 0) {
                    _showBottomNavBar = false;
                  }
                });
              })
          : null,
    );
  }
}
