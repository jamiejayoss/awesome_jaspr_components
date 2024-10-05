import 'package:jaspr/jaspr.dart';

class Scaffold extends StatelessComponent {
  const Scaffold({
    super.key,
    this.appBar,
    this.body,
    this.footer,
  });
  final Component? appBar;
  final Component? body;
  final Component? footer;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    if (appBar != null) yield appBar!;
    if (body != null) yield body!;
    if (footer != null) yield footer!;
  }
}
