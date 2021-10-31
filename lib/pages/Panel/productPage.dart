import 'package:flutter/material.dart';

class ProductPage  extends StatelessWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text("Hello Product Page",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 27),),
    );
  }
}
