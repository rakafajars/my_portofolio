import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/gen/assets.gen.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class WebEducationSection extends StatelessWidget {
  const WebEducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorConst.black1,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Education',
            style: FontStyleTheme.headingStyle.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          const WebEducationItemSection(),
        ],
      ),
    );
  }
}

class WebEducationItemSection extends StatefulWidget {
  const WebEducationItemSection({super.key});

  @override
  State<WebEducationItemSection> createState() =>
      _WebEducationItemSectionState();
}

class _WebEducationItemSectionState extends State<WebEducationItemSection> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(
          horizontal: 100,
        ),
        padding: const EdgeInsets.all(24),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(
              0.2,
            ),
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: _isHovered
                  ? Colors.black.withOpacity(0.1)
                  : Colors.transparent,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    MyAssets.images.logoUin.path,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bachelor of Science in Computer Science',
                    style: FontStyleTheme.bodyStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'University Islam Sunan Gunung Djati Bandung',
                    style: FontStyleTheme.bodyStyle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${2014} - ${2019}',
                    style: FontStyleTheme.buttonStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Studied various aspects of computer science including algorithms, data structures, and software engineering. Graduated with honors.',
                    style: FontStyleTheme.captionStyle.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
