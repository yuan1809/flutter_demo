import 'package:flutter/material.dart';
import 'first_demo.dart';
import 'material_components.dart';

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