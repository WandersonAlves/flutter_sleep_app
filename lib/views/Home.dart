import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sleep_app/common/Utils.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';
import 'package:flutter_sleep_app/widgets/AppBiggerCard.dart';
import 'package:flutter_sleep_app/widgets/AppIcon.dart';
import 'package:flutter_sleep_app/widgets/AppSimpleButton.dart';
import 'package:flutter_sleep_app/widgets/SectionLabel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.0, top: 32.0),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            SizedBox(height: 20),
            Container(
              height: 42,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: buildButtons()
                ),
            ),
            SizedBox(height: 20),
            RecommendedRow(),
            SizedBox(height: 20),
            Container(
              height: 158,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: buildBiggerCards()
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildButtons() {
    return Utils.childrenWithSeparator('row',
      size: 15,
      children: [
        AppSimpleButton(text: 'Insomnia'),
        AppSimpleButton(text: 'Baby Sleep', isSelected: false),
        AppSimpleButton(text: 'Sadness', isSelected: false),
        AppSimpleButton(text: 'Anxiety', isSelected: false),
      ]
    );
  }

  List<Widget> buildBiggerCards() {
    return Utils.childrenWithSeparator('row',
      size: 15,
      children: [
        AppBiggercard(),
        AppBiggercard(),
        AppBiggercard(),
        AppBiggercard(),
      ]
    );
  }
}

class RecommendedRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Recommended', style: TypographyStyles.subTitle),
          Text('See all', style: TypographyStyles.link)
        ],
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textBaseline: TextBaseline.alphabetic,
      children: [
        SectionLabel(text: 'Discover'),
        AppIcon(
          icon: Icons.search,
          color: Colors.white,
        )
      ],
    );
  }
}
