import 'package:flutter/material.dart';
import 'package:my_portofolio/gen/assets.gen.dart';

class ImageCircleWidget extends StatelessWidget {
  const ImageCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage(
        MyAssets.images.avatar.path,
      ),
    );
  }
}
