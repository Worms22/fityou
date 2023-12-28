import 'package:crow/crow.dart';
import 'package:flutter/material.dart';

class ActivityEntity extends Entity {
  ActivityEntity({
    required this.title,
    required this.type,
    required this.icon,
    required this.color,
  });

  final String title;
  final String type;
  final String icon;
  final Color color;
}
