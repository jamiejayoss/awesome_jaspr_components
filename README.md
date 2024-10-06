
# Awesome Jaspr Components

**Awesome Jaspr Components** is an open-source Dart package that brings a Flutter-like development experience to the [Jaspr](https://docs.page/schultek/jaspr) framework. With a familiar API and a rich set of components, you can easily build reactive web apps using Jaspr, just like you would in Flutter.

## Features

- **Flutter-like Widgets**: Use components similar to Flutter’s widgets like `Scaffold`, `AppBar`, `Column`, and more.
- **Routing**: Includes a flexible routing system with support for nested routes, tabs, and navigation.
- **Component-based Architecture**: Build your UI using reusable components.
- **Easy-to-use API**: A developer-friendly API that feels familiar to Flutter developers.

## Getting Started

To use **Awesome Jaspr Components**, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  awesome_jaspr_components: ^0.0.1
```
Then run:
```bash
 dart pub get
```

## Example Usage
Here's a simple example to get you started. 

### App Root

```dart
import 'package:jaspr/jaspr.dart';
import 'package:awesome_jaspr_components/awesome_jaspr_components.dart';

class MyApp extends StatelessComponent {
  const MyApp({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield AwsomeApp(
      router: Router(routes: [
        ShellRoute(
          builder: (context, state, child) =>
              Fragment(children: [HomeScreen(child: child)]),
          routes: [
            Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
            Route(path: '/about', title: 'About', builder: (context, state) => const About()),
          ],
        ),
      ]),
    );
  }
}
```
### Home Screen with Tabs

```dart
class HomeScreen extends StatelessComponent {
  const HomeScreen({
    super.key,
    required this.child,
  });

  final Component child;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Scaffold(
      appBar: TabBar(
        color: Colors.lightBlue,
        tabs: [
          TabData(label: 'Home', path: '/'),
          TabData(label: 'About', path: '/about'),
        ],
      ),
      body: child,
    );
  }
}
```

## Contributing
Contributions are welcome! If you find a bug or have a feature request, feel free to open an issue or submit a pull request.

- Fork the repo.
- Create a new branch (git checkout -b feature-branch).
- Commit your changes (git commit -m 'Add some feature').
- Push to the branch (git push origin feature-branch).
- Open a pull request.
