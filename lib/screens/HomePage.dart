import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favorites.dart';
import 'messages.dart';
import 'cart.dart';
import 'notification.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Girlies"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.favorite),
              onPressed: (){
            Navigator.of(context).push(
                new CupertinoPageRoute(builder: (BuildContext context) {
                  return new GirlFavorite(title:'My Favorites');

                }));
          }),
          new Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.chat),
                  onPressed: ()
              {
                Navigator.of(context).push(
                    new CupertinoPageRoute(builder: (BuildContext context) {
                      return  new GirlMessage(title:'Messages');

                    }));

              }),
              new CircleAvatar(
                radius: 8.0,

                backgroundColor: Colors.red,
                child: new Text("0", style:new TextStyle(color: Colors.white, fontSize: 12.0)),

              )
            ],
          )

        ],
      ),
      body: new Center(
        child: new Text("My Home page store"),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(
                  new CupertinoPageRoute(builder: (BuildContext context) {
                    return  new GirlMessage(title:'Cart');

                  }));

            },
          child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 10.0,

            backgroundColor: Colors.red,
            child: new Text("0", style:new TextStyle(color: Colors.white, fontSize: 12.0)),

          )
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("Amit Pandey"), accountEmail: Text("amit.pandey@brodos.net"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Icon(Icons.person),
            ),

            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.notifications,color: Colors.white,size: 20.0,),
              ),
              title: new Text("Order Notification",),
              onTap: (){
                Navigator.of(context).push(
                    new CupertinoPageRoute(builder: (BuildContext context) {
                      return  new GirlNotification(title:'Order notification');

                    }));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.history,color: Colors.white,size: 20.0,),
              ),
              title: new Text("Order History",),
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.person,color: Colors.white,size: 20.0,),
              ),
              title: new Text("Profile Settings",),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.home,color: Colors.white,size: 20.0,),
              ),
              title: new Text("Delivery Address",),
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.help,color: Colors.white,size: 20.0,),
              ),
              title: new Text("About Us",),
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.exit_to_app,color: Colors.white,size: 20.0,),
              ),
              title: new Text("Login",),
            ),

          ],
        ),
      ),
    );
  }
}
