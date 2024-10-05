import 'package:jaspr/jaspr.dart';

class SizedBox extends StatelessComponent {
  const SizedBox({super.key, this.width, this.height, this.child});
  final Unit? width;
  final Unit? height;
  final Component? child;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles.box(height: height, width: width), [child ?? div([])]);
  }
}
