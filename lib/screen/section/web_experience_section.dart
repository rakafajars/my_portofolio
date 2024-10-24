import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/model/experience_model.dart';
import 'package:my_portofolio/theme/font_style_theme.dart';

class WebExperienceSection extends StatelessWidget {
  const WebExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...experienceModels.map(
            (e) => WebExperienceItemSection(
              experienceModel: e,
            ),
          ),
        ],
      ),
    );
  }
}

class WebExperienceItemSection extends StatelessWidget {
  final ExperienceModel experienceModel;
  const WebExperienceItemSection({
    super.key,
    required this.experienceModel,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb = constraints.maxWidth > 600;

        return Card(
          margin: EdgeInsets.only(
            bottom: 20,
            left: isWeb == true ? 100 : 50,
            right: isWeb == true ? 100 : 50,
          ),
          color: ColorConst.black1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ExpansionTile(
            collapsedBackgroundColor: ColorConst.black1,
            backgroundColor: ColorConst.black1,
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            childrenPadding: EdgeInsets.zero,
            title: Text(
              experienceModel.title,
              style: FontStyleTheme.subheadingStyle.copyWith(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              '${experienceModel.jobDesc} | ${experienceModel.yearWork}',
              style: FontStyleTheme.bodyStyle.copyWith(
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deskripsi:',
                        style: FontStyleTheme.bodyStyle
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      ...experienceModel.description.map(
                        (desc) => Text(
                          '• $desc',
                          style: FontStyleTheme.bodyStyle,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
