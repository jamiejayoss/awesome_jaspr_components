import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Tab extends StatefulComponent {
  const Tab({
    super.key,
    required this.to,
    required this.replace,
    this.extra,
    this.target,
    this.referrer,
    this.classes,
    this.styles,
    this.attributes,
    this.child,
    this.hoverColor,
    this.children,
  });

  /// The url to navigate to.
  final String to;
  final Color? hoverColor;

  /// Whether to replace the route instead of pushing.
  ///
  /// Only affects client-side routing.
  final bool replace;

  /// The extra data to attach to the new route.
  ///
  /// Only affects client-side routing.
  final Object? extra;

  /// Whether to preload the target route when the link is hovered.
  ///
  /// Only affects client-side routing when using lazy routes.

  /// The `target` attribute value applied to the anchor element.
  final Target? target;

  /// The `referrerpolicy` attribute value applied to the anchor element.
  final ReferrerPolicy? referrer;

  /// The `class` attribute value applied to the anchor element.
  final String? classes;

  /// The `style` attribute value applied to the anchor element.
  final Styles? styles;

  /// Other attribute values applied to the anchor element.
  final Map<String, String>? attributes;

  /// Child component to render inside the anchor element.
  final Component? child;

  /// Child components to render inside the anchor element.
  final List<Component>? children;
  @override
  State createState() => TabState();
}

class TabState extends State<Tab> {
  Color hoverColor = Colors.transparent;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      href: component.to,
      target: component.target,
      referrerPolicy: component.referrer,
      classes: component.classes,
      styles: component.styles?.combine(
            Styles().background(color: hoverColor),
          ) ??
          Styles.background(color: hoverColor)
              .text(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none)
              .box(
                padding: EdgeInsets.only(
                  left: 2.em,
                  right: 2.em,
                ),
                height: 100.percent,
                display: Display.flex,
              )
              .flexbox(
                alignItems: AlignItems.center,
              )
              .raw({'flex': '1'}),
      attributes: component.attributes,
      events: {
        'mouseover': (event) {
          if (component.hoverColor != null) {
            setState(
              () {
                hoverColor = component.hoverColor!;
                print('Hovering');
              },
            );
          }
        },
        'mouseout': (event) {
          setState(
            () {
              hoverColor = Colors.transparent;
              print('Hovering');
            },
          );
        },
        'click': (event) {
          var router = Router.maybeOf(context);
          if (router != null) {
            event.preventDefault();
            if (!component.replace) {
              router.push(component.to, extra: component.extra);
            } else {
              router.replace(component.to, extra: component.extra);
            }
          }
        }
      },
      [if (component.child != null) component.child!, ...?component.children],
    );
  }
}
