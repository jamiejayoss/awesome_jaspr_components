import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../properties/properties.dart';
import 'components.dart';

class TabBar extends StatefulComponent {
  const TabBar({
    required this.tabs,
    this.color,
    this.height,
    this.borderRadius,
    this.overflow,
    this.display,
    this.mainAxisAlignment,
    this.labelPadding,
    super.key,
  });

  final List<TabData> tabs;
  final Color? color;
  final Unit? height;
  final BorderRadius? borderRadius;
  final Overflow? overflow;
  final Display? display;
  final JustifyContent? mainAxisAlignment;
  final EdgeInsets? labelPadding;

  @override
  State createState() => TabBarState();
}

class TabBarState extends State<TabBar> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = RouteState.of(context).location;

    yield DomComponent(tag: 'style', child: Text('''
header nav div.active {
  position: relative;
}

header nav div.active::before {
  content: "";
  display: block;
  height: 2px;
  border-radius: 1px;
  position: absolute;
  left: 20px;
  bottom: 0.5em;
  right: 20px;
  background-color: white;
}
'''));

    yield header(
      styles: Styles.box(
        width: 100.percent,
      ).flexbox(
          justifyContent: MainAxisAlignment.center,
          alignItems: CrossAxisAlignment.center),
      [
        nav(
            styles: Styles.background(color: component.color)
                .box(
                  width: 60.percent,
                  height: component.height ?? 3.em,
                  radius: component.borderRadius ?? BorderRadius.circular(1.px),
                  overflow: component.overflow ?? Overflow.clip,
                  display: component.display ?? Display.flex,
                )
                .flexbox(justifyContent: MainAxisAlignment.spaceAround),
            [
              for (var route in component.tabs)
                div(
                  events: {},
                  classes: activePath == route.path ? 'active' : null,
                  [
                    if (route.path != null)
                      Tab(
                          to: route.path!,
                          hoverColor: Colors.blue,
                          replace: true,
                          child: TextComponent(route.label)),
                  ],
                ),
            ]),
      ],
    );
  }
}
