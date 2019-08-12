import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 48,
      height: 3,
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(4.0)),
    );
  }
}
