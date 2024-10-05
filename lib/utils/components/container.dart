import 'package:jaspr/jaspr.dart';

class Container extends StatelessComponent {
  const Container({
    super.key,
    required this.child,
    this.color,
    this.height,
    this.width,
    this.padding,
    this.margin,
    this.style,
    this.borderRadius,
    this.verticalAlign,
    this.horizontalAlign,
    this.border,
    this.shadow,
  });
  final Component child;
  final Color? color;
  final Unit? height;
  final Unit? width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Styles? style;
  final BorderRadius? borderRadius;
  final Border? border;
  final BoxShadow? shadow;
  final JustifyContent? verticalAlign;
  final AlignItems? horizontalAlign;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles.box(
          margin: margin,
          padding: padding,
          height: height,
          width: width,
          border: border,
          radius: borderRadius,
          shadow: shadow,
        ).background(color: color).flexbox(
            justifyContent: JustifyContent.center,
            direction: FlexDirection.column,
            alignItems: AlignItems.center),
        [child]);
  }
}
