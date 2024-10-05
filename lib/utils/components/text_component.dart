import 'package:jaspr/jaspr.dart';

class TextComponent extends StatelessComponent {
  const TextComponent(this.data,
      {super.key,
      this.fontSize,
      this.align,
      this.margin,
      this.maxWidth,
      this.fontWeight,
      this.color});
  final String data;
  final Unit? fontSize;
  final TextAlign? align;
  final Unit? maxWidth;
  final EdgeInsets? margin;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles.box(maxWidth: maxWidth)
            .text(
                fontSize: fontSize ?? 14.px,
                align: align ?? TextAlign.center,
                fontWeight: fontWeight,
                color: color)
            .box(margin: margin),
        [
          text(
            data,
          ),
        ]);
  }
}
