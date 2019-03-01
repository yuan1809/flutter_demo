import 'package:flutter/material.dart';
import 'package:flutter_demo/base_page.dart';

class ExpandedDemo extends BasePage{

  @override
  Widget createBody() {
    return new Center(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new Expanded(
              child: new Image.asset('images/timg1.jpg'),
            ),
            new Expanded(
              flex: 2,
              child: new Image.asset('images/timg2.jpg'),
            ),
            new Expanded(
              child: new Image.asset('images/timg3.jpg'),
            )])
    );
  }

  @override
  String getRouterName() {
    return "layout/ExpandedDemo";
  }

  @override
  String getTitle() {
    return "Expanded Demo";
  }

}