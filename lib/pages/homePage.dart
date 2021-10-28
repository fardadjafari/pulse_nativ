import 'package:flutter/material.dart';

class HomePage  extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text("Hello Home Page",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 27),),
    );
  }
}
