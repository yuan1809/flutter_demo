import 'package:flutter/material.dart';
import 'appbar_bottom_sample.dart';
import 'basic_appbar_sample.dart';
import 'tabbed_appbar_sample.dart';

class AppbarDemo extends StatelessWidget {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    var rows = <Widget>[
        new ListTile(
          title: new Text("AppBar Bottom Sample", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new AppBarBottomSample()));
          }),
         new ListTile(
            title: new Text("Basic AppBar Sample", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new BasicAppBarSample()));
            }),
        new ListTile(
            title: new Text("Tabbed AppBar Sample", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new TabbedAppBarSample()));
            }),
    ];


    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Appbar Demo'),
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