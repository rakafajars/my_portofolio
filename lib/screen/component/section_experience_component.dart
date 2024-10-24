import 'package:flutter/material.dart';
import 'package:my_portofolio/screen/section/web_experience_section.dart';

class SectionExperienceComponent extends StatelessWidget {
  const SectionExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const WebExperienceSection();
        } else {
          return const WebExperienceSection();
        }
      },
    );
  }
}
