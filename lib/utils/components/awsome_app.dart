import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components.dart';

class AwsomeApp extends StatelessComponent {
  const AwsomeApp({
    super.key,
    required this.router,
  });
  final Router router;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'style', child: Text('''
@import url(https://fonts.googleapis.com/css?family=Roboto);

html,
body {
  font-family: 'Roboto', sans-serif;
  width: 100%;
  min-height: 100vh;
  padding: 0;
  margin: 0;

}'''));
    yield Container(
        style: Styles.box(height: 100.percent, display: Display.flex)
            .flexbox(direction: FlexDirection.column, wrap: FlexWrap.wrap),
        child: router);
  }
}
