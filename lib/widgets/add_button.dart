import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(10)
      ),
      height: 40,
      width: 40,
      child: Icon(
        FontAwesomeIcons.plus,
        color: textColorPrimary,
      ),
    );
  }
}

