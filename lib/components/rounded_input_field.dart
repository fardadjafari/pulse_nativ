import 'package:flutter/material.dart';
import 'package:pulse_nativ/components/text_field_container.dart';
import 'package:pulse_nativ/data/constanse.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key,
    this.icon,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: KPrimaryLightColor,
            ),
            border: InputBorder.none),
        onChanged: onChanged,
      ),
    );
  }
}
