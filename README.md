<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->
<!-- 
TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more. -->

# Awesome Jaspr Components

**Awesome Jaspr Components** is an open-source Dart package that brings a Flutter-like development experience to the [Jaspr](https://jaspr.dev) framework. With a familiar API and a rich set of components, you can easily build reactive web apps using Jaspr, just like you would in Flutter.

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
