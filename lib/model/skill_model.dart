import 'package:my_portofolio/gen/assets.gen.dart';

class SkillModel {
  final String pathImage;

  SkillModel({
    required this.pathImage,
  });
}

List<SkillModel> skillModels = [
  SkillModel(
    pathImage: MyAssets.images.flutter.path,
  ),
  SkillModel(
    pathImage: MyAssets.images.dart.path,
  ),
  SkillModel(
    pathImage: MyAssets.images.javascript.path,
  ),
  SkillModel(
    pathImage: MyAssets.images.react.path,
  ),
  SkillModel(
    pathImage: MyAssets.images.firebase.path,
  ),
];
