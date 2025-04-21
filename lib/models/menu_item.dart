import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String description;
  final String category;
  final String dateTime;
  final IconData icon;
  final Color color;

  MenuItem({
    required this.title,
    required this.description,
    required this.category,
    required this.dateTime,
    required this.icon,
    required this.color,
  });
}
