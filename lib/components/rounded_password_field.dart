import 'package:flutter/material.dart';
import 'package:pulse_nativ/components/text_field_container.dart';
import 'package:pulse_nativ/data/constanse.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
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
            border: InputBorder.none),
      ),
    );
  }
}
