import 'package:jaspr/jaspr.dart';

class Button extends StatelessComponent {
  const Button(
      {super.key,
      this.margin,
      required this.child,
      this.padding,
      this.height,
      this.width,
      this.style,
      this.borderRadius,
      this.border,
      this.color,
      this.textColor,
      this.shadow,
      required this.onTap});
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Component child;
  final Unit? height;
  final Unit? width;
  final Styles? style;
  final BorderRadius? borderRadius;
  final Border? border;
  final Color? color;
  final Color? textColor;
  final BoxShadow? shadow;
  final VoidCallback? onTap;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
        events: events(onClick: onTap),
        styles: Styles.box(
                height: height ?? 35.px,
                width: width,
                border: border ??
                    Border.all(
                      BorderSide.none(),
                    ),
                padding: padding ?? EdgeInsets.symmetric(horizontal: 12.px),
                margin: margin,
                radius: borderRadius ?? BorderRadius.circular(30.px),
                shadow: shadow)
            .background(color: color)
            .text(color: textColor)
            .flexbox(
                alignItems: AlignItems.center,
                justifyContent: JustifyContent.center),
        [child]);
  }
}
