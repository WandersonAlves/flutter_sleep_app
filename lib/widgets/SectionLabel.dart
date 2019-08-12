import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';

class SectionLabel extends StatelessWidget {
  final String text;

  SectionLabel({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(this.text, style: TypographyStyles.mainSection)
      ]
    );
  }
}