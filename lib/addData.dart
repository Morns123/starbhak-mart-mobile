import 'package:flutter/material.dart';
import 'package:starbhak_mart/account.dart';
import 'package:starbhak_mart/addButton.dart';
import 'package:starbhak_mart/nav.dart';

class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  Widget _buildIconButton(IconData icon, VoidCallback onTap) {
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

  Widget _buildIconButton2(IconData icon, VoidCallback onTap) {
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
                      context, MaterialPageRoute(builder: (context) => Acc()));
                },
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemData(
      String image, String text, String text2, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 10),
        ),
        Icon(
          icon,
          color: Colors.red,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildIconButton(Icons.arrow_back_ios_new_rounded, () {}),
                  _buildIconButton2(Icons.person_outline, () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.deepOrange.shade200,
                              Colors.deepOrange.shade300,
                              Colors.deepOrange.shade400,
                              Colors.deepOrange.shade800
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddButton(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Add Data'),
                            Icon(
                              Icons.add_outlined,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Foto',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Nama Produk',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Harga',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Aksi',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Divider(),
            _buildItemData('assets/food2.jpg', 'Ramen Medium', 'Rp.50.000,00',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('assets/drink2.jpg', 'Green Tea', 'Rp.10.000,00',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('assets/food2.jpg', 'Ramen Small', 'Rp.35.000,00',
                Icons.delete_outlined),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
