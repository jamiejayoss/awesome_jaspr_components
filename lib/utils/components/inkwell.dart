import 'package:jaspr/jaspr.dart';

class Inkwell extends StatelessComponent {
  const Inkwell({
    super.key,
    required this.child,
    this.onTap,
    this.height,
    this.width,
  });
  final Component child;
  final VoidCallback? onTap;
  final Unit? height;
  final Unit? width;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
        styles: Styles.box(
                cursor: Cursor.pointer, border: Border.all(BorderSide.none()))
            .background(color: Colors.transparent),
        events: events(onClick: onTap),
        [child]);
  }
}
