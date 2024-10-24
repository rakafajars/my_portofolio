import 'package:flutter/material.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';
import 'package:my_portofolio/widget/button_download_cv.dart';
import 'package:my_portofolio/widget/image_circle_widget.dart';
import 'package:my_portofolio/widget/name_job_widget.dart';
import 'package:my_portofolio/widget/name_widget.dart';

class WebHomeSection extends StatelessWidget {
  const WebHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi I’m',
                    style: FontStyleTheme.subheadingStyle,
                  ),
                  const NameWidget(),
                  const NameJobWidget()
                ],
              ),
            ),
            const ImageCircleWidget(),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          'With over 4 years of dedicated experience in the industry, I have honed my skills to thrive in the dynamic world of remote work. This journey has not only sharpened my professional expertise but also cultivated my ability to adapt and excel in diverse digital environments.',
          style: FontStyleTheme.captionStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'My professional approach is characterized by versatility and effective communication. Whether collaborating with a vibrant team or tackling challenging solo projects, I bring a positive attitude and excellent communication skills to every endeavor. I pride myself on creating a productive and enjoyable work atmosphere, believing that the right mindset is key to achieving outstanding results.',
          style: FontStyleTheme.captionStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          "Beyond the professional realm, I find balance and inspiration in my hobbies. You'll often find me immersed in the strategic depths of Football Manager or competing in the virtual arenas of Valorant. These pastimes not only serve as a fun escape but also keep my strategic thinking and quick reflexes sharp - skills that I find invaluable in my professional life as well.",
          style: FontStyleTheme.captionStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const ButtonDownloadCvWidget(),
        const SizedBox(height: 16),
      ],
    );
  }
}
