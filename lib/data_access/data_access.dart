import 'package:flutter/material.dart';
import 'local_file.dart';
import 'http.dart';
import 'shared_preferences.dart';

class DataAccessDemo extends StatelessWidget {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    var rows = <Widget>[
        new ListTile(
          title: new Text("Local File", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new LocalFileDemo()));
          }),
        new ListTile(
            title: new Text("Http", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new HttpDemo()));
            }),
        new ListTile(
            title: new Text("Shared Preferences", style: _biggerFont),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new SharedPreferencesDemo()));
            }),
    ];


    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Data Access Demo'),
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