import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sleep_app/common/Utils.dart';
import 'package:flutter_sleep_app/model/RecommendedItem.dart';
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
  List<RecommendedItem> parseJSON(String res) {
    if (res == null) {
      return [];
    }
    final decoded = json.decode(res.toString());
    if (decoded != null) {
      final parsed = decoded.cast<Map<String, dynamic>>();
      return parsed
          .map<RecommendedItem>((json) => RecommendedItem.fromJSON(json))
          .toList();
    }
    else {
      return [];
    }
  }

  FutureBuilder<String> recentCardsFutureBuilder(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString('assets/json/recommendedItems.json'),
      builder: (context, snapshot) {
        List<RecommendedItem> items = parseJSON(snapshot.data.toString());
        return items.isNotEmpty
            ? Container(
                child: Wrap(
                direction: Axis.horizontal,
                runSpacing: 20,
                spacing: 20,
                children: items.map((item) {
                    return RecentCardDefault(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.title, style: TypographyStyles.cardTitle),
                          Expanded(child: SizedBox()),
                          Row(
                            children: Utils.childrenWithSeparator('row', size: 5, children: item.icons)
                          )
                        ],
                      ),
                      color: item.color,
                    );
                  }).toList()
                ),
              )
            : SizedBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: recentCardsFutureBuilder(context)
    );
  }
}
