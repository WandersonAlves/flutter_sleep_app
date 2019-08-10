import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';

class AppSimpleButton extends StatelessWidget {

  final String text;
  final bool isSelected;

  AppSimpleButton({ @required this.text, this.isSelected = true });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.isSelected ? AppColors.accentColor : AppColors.buttonBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: this.isSelected ? [BoxShadow(color: AppColors.accentColor.withOpacity(0.5), blurRadius: 10, offset: Offset(0, 5))] : []
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Text(this.text, style:TypographyStyles.simpleButton),
      ),
    );
  }
}