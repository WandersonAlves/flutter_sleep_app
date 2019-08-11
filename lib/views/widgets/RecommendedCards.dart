import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/common/Utils.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';
import 'package:flutter_sleep_app/widgets/AppCard.dart';

class RecommendedCardDefault extends StatelessWidget {
  final Widget body;
  final Color color;
  RecommendedCardDefault(this.body, {this.color = AppColors.darkerAccentColor});
  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: this.color,
      heightMultiplier: 0.4,
      widthMultiplier: 0.6,
      body: body,
    );
  }
}

class RecommendedCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: Utils.childrenWithSeparator('row', size: 15, children: [
            RecommendedCardDefault(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sleep Meditation', style: TypographyStyles.cardTitle),
                  SizedBox(height: 5),
                  Text('7 days audio series',
                      style: TypographyStyles.cardSubtitle),
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Icon(Icons.headset, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.movie, color: Colors.white)
                    ],
                  )
                ],
              ),
            ),
            RecommendedCardDefault(null, color: Colors.redAccent),
            RecommendedCardDefault(null, color: Colors.teal),
            RecommendedCardDefault(null, color: Colors.orange),
          ])),
    );
  }
}