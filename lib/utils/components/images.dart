import 'package:jaspr/jaspr.dart';

class AssetImage extends StatelessComponent {
  const AssetImage({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.alt,
    this.attributes,
  });
  final int? width;
  final int? height;
  final String? alt;
  final Map<String, String>? attributes;

  /// Image path from the web directory
  final String path;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield img(
      src: path,
      width: width,
      height: height,
      alt: alt,
      attributes: attributes,
    );
  }
}

class Image extends StatelessComponent {
  const Image({
    super.key,
    required this.src,
    this.width,
    this.height,
    this.alt,
    this.attributes,
  });
  final int? width;
  final int? height;
  final String? alt;
  final Map<String, String>? attributes;
  final String src;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield img(
      src: src,
      width: width,
      height: height,
      alt: alt,
      attributes: attributes,
    );
  }

  factory Image.network({
    required String src,
    Unit? width,
    Unit? height,
    String? alt,
    Map<String, String>? attributes,
  }) {
    return Image(src: src);
  }
  factory Image.asset({
    /// Image path stored in the web directory
    required String path,
    Unit? width,
    Unit? height,
    String? alt,
    Map<String, String>? attributes,
  }) {
    return Image(src: path);
  }
}
