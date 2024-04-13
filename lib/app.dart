import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'components/navbar.dart';
import 'features/products/pages/products.dart';
import 'pages/about.dart';
import 'pages/home.dart';

@client
class ScopedApp extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield ProviderScope(child: App());
  }
}

// A simple [StatelessComponent] with a [build] method.
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield const Navbar();
    yield div(classes: 'main', [
      Router(routes: [
        Route(
          path: '/',
          title: 'Home',
          builder: (_, __) => const Home(),
        ),
        Route(
          path: '/about',
          title: 'About',
          builder: (_, __) => const About(),
        ),
        Route(
          path: '/products',
          title: 'Products',
          builder: (_, __) => const ProductsPage(),
        ),
      ]),
    ]);
  }

  static List<NestedStyleRule> get styles => [
        css('.main', [
          css('&')
              .box(height: 100.vh)
              .flexbox(direction: FlexDirection.column, wrap: FlexWrap.wrap),
          css('section').flexItem(flex: Flex(grow: 1)).flexbox(
                direction: FlexDirection.column,
                justifyContent: JustifyContent.center,
                alignItems: AlignItems.center,
              ),
        ]),
        ...Header.styles,
        ...About.styles,
      ];
}
