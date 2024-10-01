import 'package:flutter/material.dart';

class NavItem {
  final String title;
  final VoidCallback onTap;

  NavItem({required this.title, required this.onTap});
}
