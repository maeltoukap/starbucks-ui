/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bakery.png
  AssetGenImage get bakery => const AssetGenImage('assets/images/bakery.png');

  /// File path: assets/images/basket.png
  AssetGenImage get basket => const AssetGenImage('assets/images/basket.png');

  /// File path: assets/images/coffee.png
  AssetGenImage get coffee => const AssetGenImage('assets/images/coffee.png');

  /// File path: assets/images/coffee_seed.png
  AssetGenImage get coffeeSeed =>
      const AssetGenImage('assets/images/coffee_seed.png');

  /// File path: assets/images/cup.png
  AssetGenImage get cup => const AssetGenImage('assets/images/cup.png');

  /// File path: assets/images/drinks.png
  AssetGenImage get drinks => const AssetGenImage('assets/images/drinks.png');

  $AssetsImagesProductsGen get products => const $AssetsImagesProductsGen();

  /// File path: assets/images/tea.png
  AssetGenImage get tea => const AssetGenImage('assets/images/tea.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bakery, basket, coffee, coffeeSeed, cup, drinks, tea];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/cup.svg
  String get cup => 'assets/svg/cup.svg';

  /// List of all assets
  List<String> get values => [cup];
}

class $AssetsImagesProductsGen {
  const $AssetsImagesProductsGen();

  /// File path: assets/images/products/caramel.png
  AssetGenImage get caramel =>
      const AssetGenImage('assets/images/products/caramel.png');

  /// File path: assets/images/products/caramelly_intense.png
  AssetGenImage get caramellyIntense =>
      const AssetGenImage('assets/images/products/caramelly_intense.png');

  /// File path: assets/images/products/matcha_green_tea.png
  AssetGenImage get matchaGreenTea =>
      const AssetGenImage('assets/images/products/matcha_green_tea.png');

  /// File path: assets/images/products/milkshake.png
  AssetGenImage get milkshake =>
      const AssetGenImage('assets/images/products/milkshake.png');

  /// File path: assets/images/products/mocha_coconut.png
  AssetGenImage get mochaCoconut =>
      const AssetGenImage('assets/images/products/mocha_coconut.png');

  /// File path: assets/images/products/vanila.png
  AssetGenImage get vanila =>
      const AssetGenImage('assets/images/products/vanila.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        caramel,
        caramellyIntense,
        matchaGreenTea,
        milkshake,
        mochaCoconut,
        vanila
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
