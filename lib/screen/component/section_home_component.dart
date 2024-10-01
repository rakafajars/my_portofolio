import 'package:flutter/material.dart';
import 'package:my_portofolio/screen/section/mobile_home_section.dart';
import 'package:my_portofolio/screen/section/web_home_section.dart';

class SectionHomeComponent extends StatelessWidget {
  const SectionHomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const WebHomeSection();
        } else {
          return const MobileHomeSection();
        }
      },
    );
  }
}
