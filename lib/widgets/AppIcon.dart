import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';

class AppIcon extends StatelessWidget {

  final bool isSelected;
  final IconData icon;
  final Function onTap;

  AppIcon({this.isSelected = false, @required this.icon, this.onTap});

  @override
  Widget build (BuildContext context) {
    return Material(
      color: Colors.transparent,
        child: InkWell(
          onTap: this.onTap,
          customBorder: CircleBorder(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Icon(this.icon, color: this._getIsSelectedColor(), size: 28),
          ),
        ),
    );
  }

  Color _getIsSelectedColor () {
    if (this.isSelected) {
      return AppColors.accentColor;
    }
    return AppColors.secondaryColor;
  }
}