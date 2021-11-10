import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_nativ/components/rounded_button.dart';
import 'package:pulse_nativ/data/constanse.dart';
import 'package:pulse_nativ/pages/Login/loginPage.dart';
import 'package:pulse_nativ/pages/Signup/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To Pulse",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SvgPicture.asset("assets/icons/welcom.svg",
                height: size.height * 0.23),
            SizedBox(
              height: size.height * 0.04,
            ),
            RoundedButton(
              text: "Login In",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              textColor: Colors.black87,
            ),
            RoundedButton(
              text: "Register",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              color: KPrimaryLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
