import 'package:flutter/material.dart';
import 'package:my_portofolio/screen/section/mobile_footer_section.dart';
import 'package:my_portofolio/screen/section/web_footer_section.dart';

class SectionFooterComponent extends StatelessWidget {
  const SectionFooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return WebFooterSection();
        } else {
          return const MobileFooterSection();
        }
      },
    );
  }
}
