import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/navbar.dart';
import 'features/products/pages/products.dart';
import 'pages/home.dart';

@client
class ScopedApp extends StatelessComponent {
  const ScopedApp({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield const ProviderScope(child: App());
  }
}

// A simple [StatelessComponent] with a [build] method.
class App extends StatelessComponent {
  const App({super.key});

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
          path: '/products',
          title: 'Products',
          builder: (_, __) => const ProductsPage(),
        ),
      ]),
    ]);
  }
}
