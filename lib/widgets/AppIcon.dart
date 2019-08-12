import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';

class AppIcon extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final Function onTap;
  final Color color;

  AppIcon(
    {
      this.isSelected = false,
      @required this.icon,
      this.onTap,
      this.color
    }
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: this.onTap,
        customBorder: CircleBorder(),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Icon(this.icon,
              color:
                  this.color != null ? this.color : this._getIsSelectedColor(),
              size: 32),
        ),
      ),
    );
  }

  Color _getIsSelectedColor() {
    if (this.isSelected) {
      return AppColors.accentColor;
    }
    return AppColors.secondaryColor;
  }
}
