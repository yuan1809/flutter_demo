import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_demo/utils/assets_utils.dart';

/**
 * DrawerDemo
 * 包含Drawer、FloatingActionButton、SnakeBar、ModalBottomSheet
 */
class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Drawer Demo'),
        ),
        drawer: new Drawer(
            child:new DrawerChild()
        ),
        floatingActionButton: new Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            child: const Icon(Icons.add),
            elevation: 7.0,
            highlightElevation: 14.0,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            mini: false,
            shape: new CircleBorder(),
            isExtended: false,
          );
        }),
    );
  }
}

class DrawerChild extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _DrawerChildState();
  }

}

class _DrawerChildState extends State<DrawerChild>{

  final _biggerFont = const TextStyle(fontSize: 18.0);

  ImageProvider _imageProvider;

  @override
  void initState() {
    _imageProvider = new AssetImage(AssetsUtils.image("ic_avatar_default.png"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(padding: const EdgeInsets.all(0.0), children: <Widget>[
      _buildDrawerHeader(context),
      new ClipRect(
        child: new ListTile(
          leading: new CircleAvatar(child: new Icon(Icons.directions_car)),
          title: new Text('CAR'),
          onTap: () => _showSnakeBar(context, "CAR onClick"),
        ),
      ),
      new ClipRect(
        child: new ListTile(
          leading: new CircleAvatar(child: new Icon(Icons.directions_bike)),
          title: new Text('BICYCLE'),
          onTap: () {
            _showSnakeBar(context, "BICYCLE onClick");
          },
        ),
      ),
      new AboutListTile(
        icon: new CircleAvatar(child: new Icon(Icons.email)),
        child: new Text("About"),
        applicationName: "Flutter Demo",
        applicationVersion: "1.0",
        applicationIcon: new Image.asset(
          AssetsUtils.image("ic_launcher.png"),
          width: 64.0,
          height: 64.0,
        ),
        applicationLegalese: "application legalese",
        aboutBoxChildren: <Widget>[
          new Text("This is a flutter demo"),
          new Text("This is a flutter demo")
        ],
      ),
    ]);
  }

  Widget _buildDrawerHeader(BuildContext context){
    return new UserAccountsDrawerHeader(
      accountName: new Text(
        "YuanYe",
      ),
      accountEmail: new Text(
          "yuan1809@126.com"
      ),
      currentAccountPicture: new GestureDetector(
        onTap: () {
          _showBottomSheet(context);
        },
        child: new CircleAvatar(
          backgroundImage: _imageProvider,
        ),
       ),
      onDetailsPressed: () {},
      otherAccountsPictures: <Widget>[
        new CircleAvatar(
          backgroundImage: _imageProvider,
        ),
      ],
    );
  }

  void _showSnakeBar(BuildContext context, String text){
    Navigator.pop(context, null); //关闭Drawer
    final snackBar = new SnackBar(content: new Text(text));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void _showBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (BuildContext context) {
      return new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.photo_camera),
            title: new Text("Camera", style: _biggerFont,),
            onTap: () async {
              Navigator.pop(context, null);//关闭BottomSheet
              var imageFile = await ImagePicker.pickImage(
                  source: ImageSource.camera);
              //更新所选图片
              if(imageFile != null){
                setState(() {
                  _imageProvider = new FileImage(imageFile);
                });
              }
            },
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.photo_library),
            title: new Text("Gallery", style: _biggerFont,),
            onTap: () async {
              Navigator.pop(context, null);//关闭BottomSheet
              var imageFile = await ImagePicker.pickImage(
                  source: ImageSource.gallery);
              //更新所选图片
              if(imageFile != null){
                setState(() {
                  _imageProvider = new FileImage(imageFile);
                });
              }
            },
          ),
        ],
      );
    });

  }
}