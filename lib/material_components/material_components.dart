import 'package:flutter/material.dart';
import 'appbar/appbar_demo.dart';
import 'bottom_navigation_bar.dart';
import 'bottom_tab_bar.dart';
import 'drawer_demo.dart';

class MaterialComponents extends StatelessWidget {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    var rows = <Widget>[
        new ListTile(
          title: new Text("Appbar", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new AppbarDemo()));
          }),
       new ListTile(
          title: new Text("BottomNavigationBar", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new BottomNavigationBarDemo()));
          }),
        new ListTile(
            title: new Text("Bottom TabBar", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new BottomTabBarDemo()));
            }),
        new ListTile(
            title: new Text("Drawer", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new DrawerDemo()));
            }),
    ];


    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Material Components'),
      ),
      body: new ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: rows.length,
          separatorBuilder: (BuildContext context, int index) => new Divider(),  // 添加分割线
          itemBuilder: (context, i) {
             return rows[i];
          }
      ),
    );
  }
}