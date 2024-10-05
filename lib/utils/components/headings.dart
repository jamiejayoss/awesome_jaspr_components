import 'package:jaspr/jaspr.dart';

class H1 extends StatelessComponent {
  const H1({super.key, required this.data});
  final String data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h1([text(data)]);
  }
}

class H2 extends StatelessComponent {
  const H2({super.key, required this.data});
  final String data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h2([text(data)]);
  }
}

class H3 extends StatelessComponent {
  const H3({super.key, required this.data});
  final String data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h3([text(data)]);
  }
}

class H4 extends StatelessComponent {
  const H4({super.key, required this.data});
  final String data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h4([text(data)]);
  }
}

class H5 extends StatelessComponent {
  const H5({super.key, required this.data});
  final String data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h5([text(data)]);
  }
}

class H6 extends StatelessComponent {
  const H6({super.key, required this.data});
  final String data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h6([text(data)]);
  }
}
