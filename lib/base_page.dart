import 'package:flutter/material.dart';

/**
 * 带AppBar基础页面
 */
abstract class BasePage extends StatelessWidget {

  final biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar:createAppBar(),
      body:createBody(),
    );
  }

  AppBar createAppBar(){
    return new AppBar(
      title: new Text(getTitle()),
    );
  }

  String getRouterName(){
     return null;
  }
  /**
   * 设置页面标题
   */
  String getTitle();
  /**
   * 设置页面内容
   */
  Widget createBody();
}