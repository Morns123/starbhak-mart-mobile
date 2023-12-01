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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildIconButtonNextPage(
                      Icons.arrow_back_ios_new_outlined, () {})
                ],
              ),
            ),
            Text('Account'),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image(image: AssetImage('profile.png')),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mordecai Nathanael Sirait',
                      style: TextStyle(fontSize: 10),
                    ),
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      'Pemrograman Perangkat Lunak dan Gim',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Lihat Profile',
                  style: TextStyle(fontSize: 10),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 10,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.book,
                      size: 10,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Syarat & Ketentuan',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.book,
                      size: 10,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Tentang',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.offline_bolt,
                      size: 10,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
