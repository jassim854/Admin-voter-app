// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:admin_voter_app/utilis/app_typography.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';






class CustomRadioButton extends StatelessWidget {
  var val;
  var value;
  String text;
  TextStyle? style;
  MainAxisAlignment? mainAxisAlignmen;
  Function(dynamic)? onChanged;

  CustomRadioButton({
    Key? key,
this.mainAxisAlignmen,
    required this.val,
    required this.value,
  
    required this.text,
    required this.onChanged,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignmen?? MainAxisAlignment.spaceBetween,
      children: [
        Radio(value: value, groupValue: val, onChanged: onChanged),
        Text(
          text,
          style: style ?? title18BlackStyle,
        ),
      ],
    );
  }
}
