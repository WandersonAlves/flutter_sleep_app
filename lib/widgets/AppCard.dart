import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';

class AppCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Calming Sounds', style: TypographyStyles.cardTitle),
            SizedBox(height: 20),
            Icon(Icons.headset, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
