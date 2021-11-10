import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "assets/images/TopLeft.png",
              width: size.width * 0.2,
            ),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: Image.asset(
              "assets/images/RgihtBottom.png",
              width: size.width * 0.2,
            ),
            bottom: 0,
            right: 0,
          ),
          child
        ],
      ),
    );
  }
}
