import 'package:flutter/material.dart';
import 'package:pulse_nativ/homePage.dart';
import 'package:pulse_nativ/slidebar.dart';

class slidebarLayout extends StatefulWidget {
  const slidebarLayout({Key? key}) : super(key: key);

  @override
  _slidebarLayoutState createState() => _slidebarLayoutState();
}

class _slidebarLayoutState extends State<slidebarLayout> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: new Stack(
            children: [
              HomePage(),
              Slidebar()
            ],
          ),
        ));
  }
}
