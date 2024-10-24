import 'package:flutter/material.dart';
import 'package:my_portofolio/widget/button_download_cv.dart';
import 'package:my_portofolio/widget/image_circle_widget.dart';
import 'package:my_portofolio/widget/name_job_widget.dart';
import 'package:my_portofolio/widget/name_widget.dart';

class MobileHomeSection extends StatelessWidget {
  const MobileHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageCircleWidget(),
        NameWidget(),
        NameJobWidget(),
        SizedBox(height: 16),
        ButtonDownloadCvWidget(),
        SizedBox(height: 24),
      ],
    );
  }
}
