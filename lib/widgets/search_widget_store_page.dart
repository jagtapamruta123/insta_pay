import 'package:flutter/material.dart';

class SearchProduct extends StatelessWidget {
  final TextEditingController inputController;

  SearchProduct(this.inputController);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      alignment: Alignment.bottomCenter,
      constraints: BoxConstraints.expand(height: 80),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 1,
        child: TextField(
          onTap: () {},
          maxLines: 1,
          readOnly: false,
          controller: inputController,
          style: TextStyle(color: Colors.grey[600], fontSize: 18),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
            border: InputBorder.none,
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
