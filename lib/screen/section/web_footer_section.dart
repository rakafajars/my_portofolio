import 'package:flutter/material.dart';
import 'package:my_portofolio/model/contact_model.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class WebFooterSection extends StatelessWidget {
  WebFooterSection({super.key});

  final List<ContactModel> contacts = [
    ContactModel(
      title: 'Email',
      value: 'rakafajar18@gmail.com',
      icon: Icons.email_outlined,
      url: 'mailto:rakafajar18@gmail.com',
    ),
    ContactModel(
      title: 'LinkedIn',
      value: 'linkedin.com/in/rakafajars',
      icon: Icons.link,
      url: 'https://www.linkedin.com/in/rakafajars/',
    ),
    ContactModel(
      title: 'GitHub',
      value: 'github.com/rakafajars',
      icon: Icons.code,
      url: 'https://github.com/rakafajars',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Contact Me',
            style: FontStyleTheme.headingStyle.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 32,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: contacts
                .map(
                  (contact) => ContactItem(
                    info: contact,
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 32),
          Text(
            '@RFS 2024. All Rights Reserved',
            style: FontStyleTheme.captionStyle,
          ),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final ContactModel info;

  const ContactItem({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchURL(info.url),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(
              0.2,
            ),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(info.icon, color: Colors.white, size: 24),
            const SizedBox(width: 12),
            Column(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    await launchUrl(
      Uri.parse(
        url,
      ),
    );
  }
}
