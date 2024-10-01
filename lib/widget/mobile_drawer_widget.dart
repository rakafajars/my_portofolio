import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/nav_item_const.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class MobileDrawerWidget extends StatelessWidget {
  final String title;
  final List<NavItem> items;

  const MobileDrawerWidget({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              title,
              style: FontStyleTheme.headingStyle,
            ),
          ),
          // ...items
          //     .map(
          //       (item) => ListTile(
          //         title: Text(
          //           item.title,
          //           style: FontStyleTheme.buttonStyle,
          //         ),
          //         onTap: () {
          //           item.onTap();
          //           Navigator.pop(context);
          //         },
          //       ),
          //     )
          //     .toList(),
        ],
      ),
    );
  }
}
