import 'package:flutter/material.dart';

class ToolPage  extends StatelessWidget {
  const ToolPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text("Hello Tools Page",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 27),),
    );
  }
}
