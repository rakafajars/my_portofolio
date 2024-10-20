/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.jpeg
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.jpeg');

  /// File path: assets/images/dart.svg
  SvgGenImage get dart => const SvgGenImage('assets/images/dart.svg');

  /// File path: assets/images/firebase.svg
  SvgGenImage get firebase => const SvgGenImage('assets/images/firebase.svg');

  /// File path: assets/images/flutter.svg
  SvgGenImage get flutter => const SvgGenImage('assets/images/flutter.svg');

  /// File path: assets/images/github.png
  AssetGenImage get github => const AssetGenImage('assets/images/github.png');

  /// File path: assets/images/gmail.png
  AssetGenImage get gmail => const AssetGenImage('assets/images/gmail.png');

  /// File path: assets/images/javascript.svg
  SvgGenImage get javascript =>
      const SvgGenImage('assets/images/javascript.svg');

  /// File path: assets/images/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/images/linkedin.png');

  /// File path: assets/images/logo_uin.jpg
  AssetGenImage get logoUin =>
      const AssetGenImage('assets/images/logo_uin.jpg');

  /// File path: assets/images/react.svg
  SvgGenImage get react => const SvgGenImage('assets/images/react.svg');

  /// List of all assets
  List<dynamic> get values => [
        avatar,
        dart,
        firebase,
        flutter,
        github,
        gmail,
        javascript,
        linkedin,
        logoUin,
        react
      ];
}

class $AssetsSertifikatGen {
  const $AssetsSertifikatGen();

  /// File path: assets/sertifikat/batch4_page-0001.jpg
  AssetGenImage get batch4Page0001 =>
      const AssetGenImage('assets/sertifikat/batch4_page-0001.jpg');

  /// File path: assets/sertifikat/batch5.jpg
  AssetGenImage get batch5 =>
      const AssetGenImage('assets/sertifikat/batch5.jpg');

  /// File path: assets/sertifikat/batch6.jpg
  AssetGenImage get batch6 =>
      const AssetGenImage('assets/sertifikat/batch6.jpg');

  /// File path: assets/sertifikat/belajar_flutter_pemula_sertifikat_page-0001.jpg
  AssetGenImage get belajarFlutterPemulaSertifikatPage0001 =>
      const AssetGenImage(
          'assets/sertifikat/belajar_flutter_pemula_sertifikat_page-0001.jpg');

  /// File path: assets/sertifikat/belajar_fundamental_flutter_sertifikat_page-0001.jpg
  AssetGenImage get belajarFundamentalFlutterSertifikatPage0001 =>
      const AssetGenImage(
          'assets/sertifikat/belajar_fundamental_flutter_sertifikat_page-0001.jpg');

  /// File path: assets/sertifikat/best_mentor_page-0001.jpg
  AssetGenImage get bestMentorPage0001 =>
      const AssetGenImage('assets/sertifikat/best_mentor_page-0001.jpg');

  /// File path: assets/sertifikat/memulai_dengan_pemograman_dart_sertifikat_page-0001.jpg
  AssetGenImage get memulaiDenganPemogramanDartSertifikatPage0001 =>
      const AssetGenImage(
          'assets/sertifikat/memulai_dengan_pemograman_dart_sertifikat_page-0001.jpg');

  /// File path: assets/sertifikat/memulai_dengan_pemograman_swift_page-0001.jpg
  AssetGenImage get memulaiDenganPemogramanSwiftPage0001 => const AssetGenImage(
      'assets/sertifikat/memulai_dengan_pemograman_swift_page-0001.jpg');

  /// File path: assets/sertifikat/menjadi_flutter_developer_expert_sertifikat_page-0001.jpg
  AssetGenImage get menjadiFlutterDeveloperExpertSertifikatPage0001 =>
      const AssetGenImage(
          'assets/sertifikat/menjadi_flutter_developer_expert_sertifikat_page-0001.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        batch4Page0001,
        batch5,
        batch6,
        belajarFlutterPemulaSertifikatPage0001,
        belajarFundamentalFlutterSertifikatPage0001,
        bestMentorPage0001,
        memulaiDenganPemogramanDartSertifikatPage0001,
        memulaiDenganPemogramanSwiftPage0001,
        menjadiFlutterDeveloperExpertSertifikatPage0001
      ];
}

class MyAssets {
  MyAssets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSertifikatGen sertifikat = $AssetsSertifikatGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
