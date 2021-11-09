import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_nativ/components/already_have_an_acount_check.dart';
import 'package:pulse_nativ/components/rounded_button.dart';
import 'package:pulse_nativ/components/rounded_input_field.dart';
import 'package:pulse_nativ/components/rounded_password_field.dart';
import 'package:pulse_nativ/components/text_field_container.dart';
import 'package:pulse_nativ/data/constanse.dart';
import 'package:pulse_nativ/pages/Login/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * .30,
          ),
          RoundedInputField(
            hintText: "Your Email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChange: (value) {},
          ),
          RoundedButton(
            text: "Login",
            color: KPrimaryLightColor,
            press: () {},
            textColor: Colors.white,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAcountCheck(
            press: () {},
          )
        ],
      ),
    );
  }
}
