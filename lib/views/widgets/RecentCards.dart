import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/common/Utils.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';
import 'package:flutter_sleep_app/widgets/AppCard.dart';

class RecentCardDefault extends StatelessWidget {
  final Widget body;
  final Color color;
  RecentCardDefault(this.body, {this.color = AppColors.darkerAccentColor});
  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: this.color,
      heightMultiplier: 0.4,
      widthMultiplier: 0.4,
      body: body,
    );
  }
}

class RecentCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        direction: Axis.horizontal,
        runSpacing: 20,
        spacing: 20,
        children: [
          RecentCardDefault(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Calming Sounds', style: TypographyStyles.cardTitle),
                Expanded(child: SizedBox()),
                Icon(Icons.headset, color: Colors.white)
              ],
            )
          ),
          RecentCardDefault(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Insomnia', style: TypographyStyles.cardTitle),
                Expanded(child: SizedBox()),
                Row(
                  children: [
                    Icon(Icons.movie, color: Colors.white),
                    SizedBox(width: 5),
                    Icon(Icons.warning, color: Colors.white),
                    SizedBox(width: 5),
                    Icon(Icons.library_music, color: Colors.white),
                  ],
                )
              ],
            ),
            color: Colors.redAccent,
          ),
          RecentCardDefault(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('For Children', style: TypographyStyles.cardTitle),
                Expanded(child: SizedBox()),
                Row(
                  children: [
                    Icon(Icons.child_friendly, color: Colors.white),
                    SizedBox(width: 5),
                    Icon(Icons.child_care, color: Colors.white),
                  ],
                )
              ],
            ),
            color: Colors.teal,
          ),
          RecentCardDefault(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tips for Sleeping', style: TypographyStyles.cardTitle),
                Expanded(child: SizedBox()),
                Icon(Icons.do_not_disturb_on, color: Colors.white)
              ],
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
