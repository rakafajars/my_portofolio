import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/model/skill_model.dart';

class MobileSkillSection extends StatelessWidget {
  const MobileSkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorConst.black1,
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 100,
      ),
      alignment: Alignment.center,
      child: Wrap(
        spacing: 32,
        runSpacing: 16,
        alignment: WrapAlignment.center,
        children: List.generate(
          skillModels.length,
          (index) {
            if (skillModels[index].pathImage.contains('svg')) {
              return SvgPicture.asset(
                skillModels[index].pathImage,
                height: 42,
                width: 42,
              );
            } else {
              return Image.asset(
                skillModels[index].pathImage,
                height: 42,
                width: 42,
              );
            }
          },
        ),
      ),
    );
  }
}
