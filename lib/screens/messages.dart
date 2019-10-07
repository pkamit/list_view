import 'package:flutter/material.dart';

class GirlMessage extends StatefulWidget {
  GirlMessage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GirlMessageState createState() => _GirlMessageState();
}

class _GirlMessageState extends State<GirlMessage> {
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
