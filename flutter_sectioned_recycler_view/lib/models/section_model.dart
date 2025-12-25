import 'package:flutter/material.dart';

class SectionModel {
  final String title;
  final IconData? icon;
  final List<String> items;
  bool isExpanded;

  SectionModel({
    required this.title,
    this.icon,
    required this.items,
    this.isExpanded = true, // ✅ default expanded
  });
}
