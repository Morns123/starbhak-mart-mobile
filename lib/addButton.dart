import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starbhak_mart/account.dart';
import 'package:starbhak_mart/addData.dart';
import 'package:dropdown_search/dropdown_search.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  late ImagePicker _imagePicker;
  TextEditingController _imagePathController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _getImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imagePathController.text = image.path;
      });
    }
  }

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
                      MaterialPageRoute(builder: (context) => AddData()));
                },
                icon: Icon(
                  icon,
                ),
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
                icon: Icon(
                  icon,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String text, String text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 50,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text(
                  text2,
                  style: TextStyle(fontSize: 13),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField2(String text, String text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 50,
            child: GestureDetector(
              onTap: _getImage,
              child: AbsorbPointer(
                child: TextField(
                  controller: _imagePathController,
                  decoration: InputDecoration(
                    label: Text(text2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField3(String text, String text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(30),
          child: DropdownSearch<String>(
            clearButtonProps: ClearButtonProps(isVisible: true),
            popupProps: PopupProps.menu(),
            items: ["Makanan", "Minuman"],
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                label: Text(
                  text2,
                  style: TextStyle(fontSize: 13),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            onChanged: print,
          ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildIconButton(Icons.arrow_back_ios_new_outlined, () {}),
                _buildIconButton2(Icons.person_outlined, () {})
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Column(
              children: <Widget>[],
            ),
            Column(
              children: <Widget>[
                _buildTextField('Nama Produk', 'Masukkan nama produk'),
                _buildTextField('Harga', 'Masukkan harga'),
                _buildTextField3('Kategori', 'Menu'),
                _buildTextField2('Image', 'Chose file'),
                Padding(padding: EdgeInsets.only(top: 20)),
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
                        width: double.infinity,
                        height: 45,
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
