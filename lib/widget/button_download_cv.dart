import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/gradient_filled_button_const.dart';
import 'package:my_portofolio/constant/launch_url_const.dart';

class ButtonDownloadCvWidget extends StatelessWidget {
  const ButtonDownloadCvWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientFilledButton(
      onPressed: () {
        LaunchUrlConst.launchURLConst(
          'https://drive.google.com/file/d/1L-bIzedjdNEXlEVraqewdDZXdt4U1_6w/view?usp=sharing',
        );
      },
      text: 'Download CV',
    );
  }
}
