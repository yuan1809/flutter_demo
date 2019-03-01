import 'package:flutter/material.dart';
import 'package:flutter_demo/base_page.dart';

const String words1 = "Almost before we knew it, we had left the ground.";
const String words2 = "A shining crescent far beneath the flying vessel.";
const String words3 = "A red flair silhouetted the jagged edge of a wing.";
const String words4 = "Mist enveloped the ship three hours out from port.";

class FontsDemo extends BasePage{

  Widget _createListItem(String fontName, String fontFamily, String text){
    return new Container(
      child: new Column(
        children: <Widget>[
          new Text(
            fontName,
          ),
          new Text(
            text,
            textAlign: TextAlign.center,
            style: new TextStyle(
              inherit: false,
              fontFamily: fontFamily,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
      ),
    );
  }

  @override
  Widget createBody() {
    return new ListView(
      children: <Widget>[
        _createListItem("Flamante Roma", "FlamanteRoma", words1),
        _createListItem("Lato Bold", "LatoBold", words2),
      ],
    );
  }

  @override
  String getRouterName() {
    return "assets/FontsDemo";
  }

  @override
  String getTitle() {
    return "Fonts Demo";
  }

}