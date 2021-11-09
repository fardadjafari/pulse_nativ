import 'package:flutter/material.dart';
import 'package:pulse_nativ/data/constanse.dart';

class AlreadyHaveAnAcountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAcountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Dont have Acounte ?" : "Already have an Acount ?",
          style:
              TextStyle(color: KPrimaryLightColor, fontWeight: FontWeight.w800),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sing In",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: KPrimaryColor,
                fontSize: 15),
          ),
        )
      ],
    );
  }
}
