import 'package:flutter/material.dart';
import 'package:starbhak_mart/nav.dart';

class Acc extends StatefulWidget {
  const Acc({super.key});

  @override
  State<Acc> createState() => _AccState();
}

class _AccState extends State<Acc> {
  Widget _buildIconButtonNextPage(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Nav()));
                },
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildIconButtonNextPage(
                      Icons.arrow_back_ios_new_outlined, () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
