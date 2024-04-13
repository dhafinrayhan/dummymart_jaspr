import 'package:jaspr/jaspr.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield nav(classes: 'navbar', attributes: {
      'role': 'navigation',
      'aria-label': 'main navigation',
    }, [
      div(classes: 'navbar-brand', [
        a(
            classes: 'navbar-item has-text-weight-bold',
            href: '/',
            [text('DummyMart')]),
      ]),
      div(classes: 'navbar-menu', [
        div(classes: 'navbar-start', [
          a(classes: 'navbar-item', href: '/products', [text('Products')]),
        ]),
        div(classes: 'navbar-end', []),
      ]),
    ]);
  }
}
