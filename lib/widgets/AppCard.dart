import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';

class AppCard extends StatelessWidget {
  // Use to set the default border for main container and ClipRRect
  final BorderRadius _defaultBorderRadius = BorderRadius.circular(20);
  final Color color;
  final double widthMultiplier;
  final double heightMultiplier;
  final Widget body;

  AppCard(
    {
      this.color = AppColors.accentColor,
      @required this.widthMultiplier,
      @required this.heightMultiplier,
      this.body
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * this.widthMultiplier,
      height: MediaQuery.of(context).size.width * this.heightMultiplier,
      decoration: BoxDecoration(color: this.color, borderRadius: _defaultBorderRadius),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final height = constraints.maxHeight;
          final width = constraints.maxWidth;

          return ClipRRect(
            borderRadius: _defaultBorderRadius,
            child: Stack(
              children: [
                Positioned(
                  left: -5,
                  bottom: 20,
                  child: Container(
                    height: height * 1.4,
                    width: width * 1.4,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  right: -10,
                  top: 20,
                  child: Container(
                    height: height * 1.4,
                    width: width * 1.4,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: this.body,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}