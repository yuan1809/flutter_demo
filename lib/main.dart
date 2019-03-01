import 'package:flutter/material.dart';
import 'first_demo.dart';
import 'package:flutter_demo/material_components/material_components.dart';
import 'package:flutter_demo/layout/layout.dart';
import 'package:flutter_demo/assets/assets.dart';
import 'package:flutter_demo/data_access/data_access.dart';
import 'package:flutter_demo/native_/native_.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new DemoList(),
    );
  }
}

class DemoList extends StatelessWidget {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    var rows = <Widget>[
        new ListTile(
          title: new Text("First Demo", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new RandomWords()));
          }),
       new ListTile(
          title: new Text("Material Components", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new MaterialComponents()));
          }),
        new ListTile(
            title: new Text("Layout", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new LayoutDemo()));
            }),
        new ListTile(
            title: new Text("Assets", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new AssetsDemo()));
            }),
        new ListTile(
            title: new Text("Data Access", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new DataAccessDemo()));
            }),
        new ListTile(
            title: new Text("Native", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new NativeDemo()));
            }),
    ];


    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Flutter Demo'),
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