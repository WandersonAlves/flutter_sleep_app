import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';

class AppBiggercard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sleep Meditation', style: TypographyStyles.cardTitle),
            SizedBox(height: 5),
            Text('7 days audio series', style: TypographyStyles.cardSubtitle),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(Icons.headset, color: Colors.white),
                SizedBox(width: 20),
                Icon(Icons.movie, color: Colors.white)
              ],
            )
          ],
        ),
      ),
    );
  }
}