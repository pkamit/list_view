import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  CartPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title) ,
          centerTitle: false,
        ),

      );
    }
  }
}
