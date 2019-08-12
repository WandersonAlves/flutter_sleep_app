import 'package:flutter/material.dart';

class Utils {
  /// Adds a separator for each widget in [children]
  ///
  /// [mode] should be equal 'row' or 'column'
  ///
  /// If [mode] equal 'row', a [SizedBox] with width equal [size] will be add
  ///
  /// If [mode] equal 'column', a [SizedBox] with height equal [size] will be add
  static List<Widget> childrenWithSeparator(String mode, {double size, List<Widget> children}) {
    var newWidgets = <Widget>[];
    for(var widget in children) {
      newWidgets.add(widget);
      if (mode == 'row') {
        newWidgets.add(SizedBox(width: size));
      }
      else if (mode == 'column') {
        newWidgets.add(SizedBox(height: size));
      }
    }
    return newWidgets;
  }
}