import 'package:flutter/material.dart';
import 'package:my_portofolio/screen/section/web_sertification_section.dart';

class SectionSertificationComponent extends StatelessWidget {
  const SectionSertificationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const WebSertificationSection();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
