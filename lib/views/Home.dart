import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sleep_app/common/Utils.dart';
import 'package:flutter_sleep_app/styles/Typography.dart';
import 'package:flutter_sleep_app/views/widgets/RecentCards.dart';
import 'package:flutter_sleep_app/views/widgets/RecommendedCards.dart';
import 'package:flutter_sleep_app/widgets/AppIcon.dart';
import 'package:flutter_sleep_app/widgets/AppChip.dart';
import 'package:flutter_sleep_app/widgets/SectionLabel.dart';
import 'package:flutter_sleep_app/widgets/Separator.dart';

class Home extends StatelessWidget {

  LayoutBuilder buildLayout(List<Widget> children) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(children: children),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return this.buildLayout([
      Padding(
        padding: EdgeInsets.only(left: 32.0, top: 32.0, bottom: 32),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(),
              Separator(),
              SizedBox(height: 20),
              Container(
                height: 42,
                child: ListView(
                    scrollDirection: Axis.horizontal, children: buildButtons()),
              ),
              SizedBox(height: 20),
              RecommendedRow(),
              SizedBox(height: 20),
              RecommendedCards(),
              SizedBox(height: 20),
              Text('Recent', style: TypographyStyles.subTitle),
              SizedBox(height: 20),
              RecentCards()
            ],
          ),
        ),
      )
    ]);
  }

  List<Widget> buildButtons() {
    return Utils.childrenWithSeparator('row', size: 15, children: [
      AppChip(text: 'Insomnia'),
      AppChip(text: 'Baby Sleep', isSelected: false),
      AppChip(text: 'Sadness', isSelected: false),
      AppChip(text: 'Anxiety', isSelected: false),
    ]);
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
      crossAxisAlignment: CrossAxisAlignment.center,
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
