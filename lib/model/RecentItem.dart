import 'package:flutter/material.dart';

class RecentItem {
  final String title;
  final List<Icon> icons;
  final Color color;

  RecentItem(this.title, this.icons, this.color);

  factory RecentItem.fromJSON (Map<String, dynamic> json) {
    List<Icon> _buildIconsFromArray (String jsonIcon) {
      List<Icon> icons = [];
      if (jsonIcon == 'movie') {
        icons.add(Icon(Icons.movie, color: Colors.white));
        icons.add(Icon(Icons.local_movies, color: Colors.white));
        icons.add(Icon(Icons.slow_motion_video, color: Colors.white));
      }
      else if (jsonIcon == 'children') {
        icons.add(Icon(Icons.child_care, color: Colors.white));
        icons.add(Icon(Icons.child_friendly, color: Colors.white));
      }
      else if(jsonIcon == 'music') {
        icons.add(Icon(Icons.headset, color: Colors.white));
      }
      else if(jsonIcon == 'dnd') {
        icons.add(Icon(Icons.watch_later, color: Colors.white));
        icons.add(Icon(Icons.do_not_disturb_on, color: Colors.white));
      }
      return icons;
    }

    return RecentItem(
      json['title'] as String,
      _buildIconsFromArray(json['icon']),
      Color(int.parse("0xFF${json['color']}"))
    );
  }
}