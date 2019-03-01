import 'package:flutter/material.dart';
import 'package:flutter_demo/base_page.dart';
import 'package:flutter_demo/utils/assets_utils.dart';

class StackDemo extends BasePage{
  @override
  Widget createBody() {
    return _Stack();
  }

  @override
  String getRouterName() {
    return "layout/StackDemo";
  }

  @override
  String getTitle() {
    return "Stack Demo";
  }
}

class _Stack extends StatefulWidget{
  @override
  _StackState createState() => new _StackState();
}


class _StackState extends State<_Stack>{
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        new CircleAvatar(
          backgroundImage: new AssetImage(AssetsUtils.image('timg1.jpg')),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.black45,
          ),
          child: new Text(
            'Village',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

}