import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_sleep_app/styles/Colors.dart';

class TypographyStyles {
  static final TextStyle mainSection = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 36
  );

  static final TextStyle cardTitle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 22
  );

  static final TextStyle cardSubtitle = TextStyle(
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static final TextStyle subTitle = TextStyle(
    color: Colors.grey[600],
    fontSize: 15,
    fontWeight: FontWeight.w400
  );

  static final TextStyle link = TextStyle(
    color: AppColors.accentColor,
    fontSize: 15,
    fontWeight: FontWeight.w400
  );

  static final TextStyle simpleButton = TextStyle(
    color: Colors.white,
    fontSize: 15
  );
}
