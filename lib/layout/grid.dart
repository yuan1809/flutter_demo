import 'package:flutter/material.dart';
import 'package:flutter_demo/base_page.dart';
import 'package:flutter_demo/utils/assets_utils.dart';

class GridViewDemo extends BasePage{

  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(
        count,
            (int index) =>
        new Container(child: new Image.asset(AssetsUtils.image('timg${index % 3 + 1}.jpg'))));
  }

  Widget buildGrid() {
    return new GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTileList(30));
  }

  @override
  Widget createBody() {
    return buildGrid();
  }

  @override
  String getRouterName() {
    return "layout/GridViewDemo";
  }

  @override
  String getTitle() {
    return "GridView Demo";
  }

}