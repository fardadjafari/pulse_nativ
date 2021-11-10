import 'package:flutter/material.dart';
import 'package:pulse_nativ/data/constanse.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style:
                  TextStyle(color: KPrimaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          buildDivider()
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
        child: Divider(
      color: Color(0xFFD9D9D9),
      height: 1.5,
    ));
  }
}
