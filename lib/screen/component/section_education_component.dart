import 'package:flutter/material.dart';
import 'package:my_portofolio/screen/section/web_education_section.dart';

class SectionEducationComponent extends StatelessWidget {
  const SectionEducationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const WebEducationSection();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
