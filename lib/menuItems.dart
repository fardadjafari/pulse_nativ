import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  final title;
  final icon;
  final onTap;

  MenuItems({this.onTap, @required this.title, @required this.icon});

  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListTile(
        title: new Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
        ),
        leading: new Icon(widget.icon,size: 31,),
      ),
    );
  }
}
