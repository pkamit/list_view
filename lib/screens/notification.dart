import 'package:flutter/material.dart';

class GirlNotification extends StatefulWidget {
  GirlNotification({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GirlNotificationState createState() => _GirlNotificationState();
}

class _GirlNotificationState extends State<GirlNotification> {
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

