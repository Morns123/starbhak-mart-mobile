import 'package:flutter/material.dart';
import 'package:starbhak_mart/account.dart';
import 'package:starbhak_mart/mainMenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainMenuIcon()));
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

  Widget _buildCategory(String image, String label) {
    return Flexible(
      flex: 1,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20)),
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0),
                      blurRadius: 3,
                      spreadRadius: 0.2,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Center(
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
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String image, String title, String subTitle) {
    return Flexible(
      flex: 1,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20)),
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 135,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0),
                      blurRadius: 3,
                      spreadRadius: 0.2,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(image),
                          width: double.infinity,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(subTitle),
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
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 600;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildIconButton(Icons.dehaze_outlined, () {}),
                _buildIconButton2(Icons.person_outline, () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildCategory('food2.jpg', 'All'),
                _buildCategory('food2.jpg', 'Food'),
                _buildCategory('drink2.jpg', 'Drink'),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Food',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: isDesktop
                  ? GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      children: <Widget>[
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                      ],
                    )
                  : GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      children: <Widget>[
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
                        _buildCategoryItem(
                            'food2.jpg', 'Ramen', 'Rp.50.000,00'),
                        _buildCategoryItem(
                            'drink2.jpg', 'Green Tea', 'Rp.10.000,00'),
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
