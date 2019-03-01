import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_demo/base_page.dart';

class SharedPreferencesDemo extends BasePage{
  @override
  Widget createBody() {
    return new Center(
      child: new RaisedButton(
        onPressed: _incrementCounter,
        child: new Text('Increment Counter'),
      ),
    );
  }

  @override
  String getTitle() {
    return "Shared Preferences Demo";
  }

  _incrementCounter() async {
    SharedPreferences.setMockInitialValues({});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    prefs.setInt('counter', counter);
  }

}

