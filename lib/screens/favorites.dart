import 'package:flutter/material.dart';

class GirlFavorite extends StatefulWidget {
  GirlFavorite({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GirlFavoriteState createState() => _GirlFavoriteState();
}

class _GirlFavoriteState extends State<GirlFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: new AppBar(
      title: new Text(widget.title) ,
      centerTitle: false,
    ),

    );
  }
}

