import 'package:jaspr/jaspr.dart';

class Row extends StatelessComponent {
  const Row({
    super.key,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });
  final List<Component> children;

  final JustifyContent? mainAxisAlignment;
  final AlignItems? crossAxisAlignment;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles.flexbox(
                justifyContent: mainAxisAlignment ?? JustifyContent.center,
                direction: FlexDirection.row,
                alignItems: crossAxisAlignment ?? AlignItems.center)
            .box(width: 100.percent, height: 100.percent),
        children);
  }
}
