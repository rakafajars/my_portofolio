import 'package:flutter/material.dart';

class NavItem {
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  NavItem({
    required this.title,
    required this.onTap,
    required this.isActive,
  });
}
