import 'package:jaspr/jaspr.dart';

import '../properties/alignment.dart';

class Center extends StatelessComponent {
  const Center({super.key, required this.child});
  final Component child;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles.flexbox(
            alignItems: CrossAxisAlignment.center,
            justifyContent: MainAxisAlignment.center),
        [child]);
  }
}
