import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/nav_item_const.dart';
import 'package:my_portofolio/widget/mobile_header_widget.dart';
import 'package:my_portofolio/widget/web_header_widget.dart';

class ResponsiveNavigationWidget extends StatelessWidget {
  final List<NavItem> items;
  final NavItem currentItem;

  const ResponsiveNavigationWidget({
    super.key,
    required this.items,
    required this.currentItem,
  });

  @override
  Widget build(BuildContext context) {
    const title = 'RFS';
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return WebHeaderWidget(
            title: title,
            items: items,
            currentItem: currentItem,
          );
        } else {
          return const MobileHeaderWidget(
            title: title,
          );
        }
      },
    );
  }
}
