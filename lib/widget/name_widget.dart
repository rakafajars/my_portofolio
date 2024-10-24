import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/constant/gradient_text_const.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientTextConst(
      text: 'Raka Fajar Salinggih',
      style: FontStyleTheme.headingStyle,
      gradient: LinearGradient(
        colors: ColorConst.pinkGradient,
      ),
    );
  }
}
