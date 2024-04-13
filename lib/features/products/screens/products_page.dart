import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../providers/products.dart';

class ProductsPage extends StatelessComponent {
  const ProductsPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h2([text('Products')]);
    yield Builder(builder: (context) sync* {
      final products = context.watch(productsProvider);

      yield products.when(
        loading: () => text('Loading...'),
        error: (_, __) => text('An error occured'),
        data: (products) => ul([
          for (final product in products) li([text(product.title)])
        ]),
      );
    });
  }
}
