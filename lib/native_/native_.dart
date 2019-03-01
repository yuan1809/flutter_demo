import 'package:flutter/material.dart';
import 'battery.dart';

class NativeDemo extends StatelessWidget {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    var rows = <Widget>[
      new ListTile(
          title: new Text("Battery", style: _biggerFont),
          trailing: new Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new BatteryDemo()));
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