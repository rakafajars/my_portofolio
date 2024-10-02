import 'package:flutter/material.dart';
import 'package:my_portofolio/screen/section/mobile_skill_section.dart';
import 'package:my_portofolio/screen/section/web_skill_section.dart';

class SectionSkillComponent extends StatelessWidget {
  const SectionSkillComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const WebSkillSection();
        } else {
          return const MobileSkillSection();
        }
      },
    );
  }
}
