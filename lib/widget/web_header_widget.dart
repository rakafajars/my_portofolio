import 'package:flutter/material.dart';
import 'package:my_portofolio/animate/hover_button_animate.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/constant/nav_item_const.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class WebHeaderWidget extends StatelessWidget {
  final String title;
  final List<NavItem> items;

  const WebHeaderWidget({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConst.backgroundColor,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: FontStyleTheme.buttonStyle),
            Row(
              children: items
                  .map((item) => HoverButtonAnimate(
                        onTap: item.onTap,
                        child: Text(
                          item.title,
                          style: FontStyleTheme.buttonStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
