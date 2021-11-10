import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_nativ/components/already_have_an_acount_check.dart';
import 'package:pulse_nativ/components/rounded_button.dart';
import 'package:pulse_nativ/components/rounded_input_field.dart';
import 'package:pulse_nativ/components/rounded_password_field.dart';
import 'package:pulse_nativ/components/social_icon.dart';
import 'package:pulse_nativ/data/constanse.dart';
import 'package:pulse_nativ/pages/Login/components/background.dart';
import 'package:pulse_nativ/pages/Login/loginPage.dart';
import 'package:pulse_nativ/pages/Signup/components/order_divider.dart';

class Body extends StatelessWidget {
  @required
  final Widget child;

  const Body({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SINGUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/icons/Mobile login-bro.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
              icon: Icons.person_add,
            ),
            RoundedPasswordField(
              onChange: (value) {},
            ),
            RoundedButton(
              text: "SINGUP",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
            ),
            AlreadyHaveAnAcountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook-svgrepo-com.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-svgrepo-com.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/linkedin-svgrepo-com.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
