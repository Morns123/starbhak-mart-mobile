import 'package:flutter/material.dart';
import 'package:starbhak_mart/account.dart';
import 'package:starbhak_mart/nav.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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

  Widget _buildDetailData(String image, String text, String text2, String text3,
      IconData icon, IconData icon2, IconData icon3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 3,
                spreadRadius: 0.2,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(image),
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(text2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange[200],
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Text(
                    text3,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange[200],
                    ),
                    child: Center(
                      child: Icon(
                        icon2,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Icon(
          icon3,
          color: Colors.red,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildIconButton(Icons.arrow_back_ios_new_rounded, () {}),
                  Text(
                    'Cart',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  _buildIconButton2(Icons.person_outline, () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
            ),
            Column(
              children: <Widget>[
                _buildDetailData(
                    'assets/food2.jpg',
                    'Ramen Medium',
                    'Rp.50.000,00',
                    '1',
                    Icons.horizontal_rule_outlined,
                    Icons.add_outlined,
                    Icons.delete_outlined),
                Padding(padding: EdgeInsets.only(top: 30)),
                _buildDetailData(
                    'assets/drink2.jpg',
                    'Green Tea',
                    'Rp.10.000,00',
                    '2',
                    Icons.horizontal_rule_outlined,
                    Icons.add_outlined,
                    Icons.delete_outlined),
                Padding(padding: EdgeInsets.only(top: 30)),
                _buildDetailData(
                    'assets/food2.jpg',
                    'Ramen Small',
                    'Rp.30.000,00',
                    '1',
                    Icons.horizontal_rule_outlined,
                    Icons.add_outlined,
                    Icons.delete_outlined)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Ringkasan Belanja',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('PPN 11%'),
                    Text('Rp.10.000,230'),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Total Belanja'),
                    Text('Rp.93.000,00')
                  ],
                ),
                Divider(),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total Pembayaran',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rp.134.000,00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            ClipRRect(
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
                            Colors.deepOrange.shade700,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: 15)),
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
