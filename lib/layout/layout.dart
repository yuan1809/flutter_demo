import 'package:flutter/material.dart';
import 'lake.dart';
import 'expanded.dart';
import 'grid.dart';
import 'stack.dart';
import 'list.dart';
import 'card.dart';

class LayoutDemo extends StatelessWidget {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    var rows = <Widget>[
        new ListTile(
          title: new Text("Lake", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new LakeDemo()));
          }),
        new ListTile(
            title: new Text("Expanded", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ExpandedDemo()));
            }),
        new ListTile(
            title: new Text("GridView", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new GridViewDemo()));
            }),
        new ListTile(
            title: new Text("ListView", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ColorsDemo()));
            }),
        new ListTile(
            title: new Text("Stack", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new StackDemo()));
            }),
        new ListTile(
            title: new Text("Card", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CardDemo()));
            }),
    ];


    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Layout'),
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