import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';

class SectionLabel extends StatelessWidget {
  final String text;

  SectionLabel({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(this.text, style: TypographyStyles.mainSection),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 26,
          height: 4,
          decoration: BoxDecoration(
            color: AppColors.accentColor,
            borderRadius: BorderRadius.circular(4.0)
          ),
        )
      ]
    );
  }
}