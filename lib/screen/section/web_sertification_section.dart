import 'package:flutter/material.dart';
import 'package:my_portofolio/constant/color_const.dart';
import 'package:my_portofolio/model/sertifikat_model.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

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
                (entry) => WebSertifitacionItemSection(
                  sertifikatModel: entry.value,
                  index: entry.key,
                ),
              )
        ],
      ),
    );
  }
}

class WebSertifitacionItemSection extends StatefulWidget {
  final SertifikatModel sertifikatModel;
  final int index;

  const WebSertifitacionItemSection({
    super.key,
    required this.sertifikatModel,
    required this.index,
  });

  @override
  State<WebSertifitacionItemSection> createState() =>
      _WebSertifitacionItemSectionState();
}

class _WebSertifitacionItemSectionState
    extends State<WebSertifitacionItemSection> {
  bool _isHovering = false;

  void _showPhotoViewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: AssetImage(sertifikatModels[index].image),
                    initialScale: PhotoViewComputedScale.contained,
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    maxScale: PhotoViewComputedScale.covered * 1.5,
                    heroAttributes: PhotoViewHeroAttributes(tag: index),
                  );
                },
                itemCount: sertifikatModels.length,
                loadingBuilder: (context, event) => const Center(
                  child: CircularProgressIndicator(),
                ),
                backgroundDecoration: const BoxDecoration(
                  color: Colors.black,
                ),
                pageController: PageController(initialPage: widget.index),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _showPhotoViewDialog(context),
        child: Hero(
          tag: widget.index,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.sertifikatModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: _isHovering ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
