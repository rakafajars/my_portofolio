import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class WebExperienceSection extends StatelessWidget {
  const WebExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Experience',
            style: FontStyleTheme.headingStyle.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Card(
            margin: const EdgeInsets.only(
              bottom: 20,
              left: 100,
              right: 100,
            ),
            color: ColorConst.black1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ExpansionTile(
              collapsedBackgroundColor: ColorConst.black1,
              backgroundColor: ColorConst.black1,
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              childrenPadding: EdgeInsets.zero,
              title: Text(
                'PT Kolaborasi Sehat Indonesia (Tweak)',
                style: FontStyleTheme.subheadingStyle.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Flutter Developer | Desember 2022 - Sekarang',
                style: FontStyleTheme.bodyStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deskripsi:',
                          style: FontStyleTheme.bodyStyle
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '• Membuat aplikasi penjadwalan tempat gym private',
                          style: FontStyleTheme.bodyStyle,
                        ),
                        Text(
                          '• Membuat fitur open kelas olahraga',
                          style: FontStyleTheme.bodyStyle,
                        ),
                        Text(
                          '• Implementasi sistem booking tempat gym dan open kelas olahraga',
                          style: FontStyleTheme.bodyStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
