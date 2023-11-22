import 'package:flutter/material.dart';
import 'package:starbhak_mart/about.dart';
import 'package:starbhak_mart/account.dart';
import 'package:starbhak_mart/addData.dart';
import 'package:starbhak_mart/cart.dart';
import 'package:starbhak_mart/nav.dart';
import 'package:starbhak_mart/settings.dart';

class MainMenuIcon extends StatefulWidget {
  const MainMenuIcon({Key? key}) : super(key: key);

  @override
  State<MainMenuIcon> createState() => _MainMenuIconState();
}

class _MainMenuIconState extends State<MainMenuIcon> {
  Widget _buildCloseButton(IconData icon, VoidCallback onPressed) {
    return ListTile(
      leading: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(icon),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Nav()));
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuIconItem(IconData icon, String text, Function onPressed) {
    return Column(
      children: [
        Divider(
          color: Colors.white,
          height: 1,
        ),
        ListTile(
          leading: SizedBox(
            width: 210,
            height: 40,
            child: TextButton(
              onPressed: () => onPressed(),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 25,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 600;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(5, 25, 5, 20),
        width: isDesktop ? double.infinity : 288,
        height: double.infinity,
        color: Colors.orange[900],
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCloseButton(Icons.close_outlined, () {}),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                child: Text(
                  'Menu'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                children: [
                  buildMenuIconItem(
                    Icons.person_outline,
                    'Account',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Acc()),
                      );
                    },
                  ),
                  buildMenuIconItem(
                    Icons.home_outlined,
                    'Home',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nav()),
                      );
                    },
                  ),
                  buildMenuIconItem(
                    Icons.shopping_cart_outlined,
                    'Cart',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                  ),
                  buildMenuIconItem(
                    Icons.addchart_outlined,
                    'Add Data',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddData()),
                      );
                    },
                  ),
                  buildMenuIconItem(
                    Icons.announcement_outlined,
                    'About',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()),
                      );
                    },
                  ),
                  buildMenuIconItem(
                    Icons.settings_outlined,
                    'Settings',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
