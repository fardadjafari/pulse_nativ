import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_nativ/components/rounded_button.dart';
import 'package:pulse_nativ/components/rounded_input_field.dart';
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
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/Signin-amico.svg",
            height: size.height * .30,
          ),
          RoundedInputField(
            hintText: "Your Email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          TextFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                  icon: Icon(
                    Icons.lock,
                    color: KPrimaryLightColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: KPrimaryLightColor,
                  ),
                border: InputBorder.none
              ),
            ),
          ),
          RoundedButton(
            text: "Login",
            color: KPrimaryLightColor,
            press: (){},
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
