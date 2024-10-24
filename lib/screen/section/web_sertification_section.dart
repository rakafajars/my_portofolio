import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/model/sertifikat_model.dart';
import 'package:my_portofolio/screen/section/sertification_item_section.dart';

class WebSertificationSection extends StatelessWidget {
  const WebSertificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorConst.black1,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 100,
      ),
      child: Wrap(
        spacing: 32,
        runSpacing: 32,
        alignment: WrapAlignment.center,
        children: [
          ...sertifikatModels.asMap().entries.map(
                (entry) => SertificationItemSection(
                  sertifikatModel: entry.value,
                  index: entry.key,
                ),
              )
        ],
      ),
    );
  }
}
