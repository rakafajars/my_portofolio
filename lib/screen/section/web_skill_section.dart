import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/gen/assets.gen.dart';

class WebSkillSection extends StatefulWidget {
  const WebSkillSection({super.key});

  @override
  State<WebSkillSection> createState() => _WebSkillSectionState();
}

class _WebSkillSectionState extends State<WebSkillSection> {
  List<String> imageSkills = [
    MyAssets.images.flutter.path,
    MyAssets.images.dart.path,
    MyAssets.images.javascript.path,
    MyAssets.images.react.path,
    MyAssets.images.firebase.path,
  ];

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          imageSkills.length,
          (index) {
            if (imageSkills[index].contains('svg')) {
              return SvgPicture.asset(
                imageSkills[index],
                height: 42,
                width: 42,
              );
            } else {
              return Image.asset(
                imageSkills[index],
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
