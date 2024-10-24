import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/model/sertifikat_model.dart';
import 'package:my_portofolio/screen/section/sertification_item_section.dart';
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
          return Container(
            width: double.infinity,
            height: 250,
            color: ColorConst.black1,
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: ListView.builder(
              itemCount: sertifikatModels.length,
              padding: const EdgeInsets.only(
                left: 50,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SertificationItemSection(
                    index: index,
                    sertifikatModel: sertifikatModels[index],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
