import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/launch_url_const.dart';
import 'package:my_portofolio/model/contact_model.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class MobileFooterSection extends StatelessWidget {
  const MobileFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24, // Reduced padding for mobile
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          Column(
            children: contacts
                .map(
                  (contact) => Padding(
                    padding: const EdgeInsets.only(
                        bottom: 12), // Space between items
                    child: MobileContactItem(
                      info: contact,
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 24),
          Text(
            '@RFS 2024. All Rights Reserved',
            style: FontStyleTheme.captionStyle,
          ),
        ],
      ),
    );
  }
}

class MobileContactItem extends StatelessWidget {
  final ContactModel info;

  const MobileContactItem({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => LaunchUrlConst.launchURLConst(info.url),
      child: Container(
        width: double.infinity, // Full width for mobile
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(info.icon, color: Colors.white, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.title,
                    style: FontStyleTheme.bodyStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    info.value,
                    style: FontStyleTheme.captionStyle.copyWith(
                      color: Colors.white70,
                    ),
                    overflow: TextOverflow.ellipsis, // Handle long text
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
