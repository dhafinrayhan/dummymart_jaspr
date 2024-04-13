import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../../../components/html.dart';
import '../models/product.dart';
import '../providers/products.dart';

class ProductsPage extends StatelessComponent {
  const ProductsPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final products = context.watch(productsProvider);

    yield products.when(
      loading: () => text('Loading...'),
      error: (_, __) => text('An error occured'),
      data: (products) => section(classes: 'section', [
        div(classes: 'grid is-col-min-12', [
          for (final product in products)
            div(classes: 'cell', [_ProductCard(product)])
        ])
      ]),
    );
  }
}

class _ProductCard extends StatelessComponent {
  const _ProductCard(this.product);

  final Product product;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'card', [
      div(classes: 'card-image', [
        figure(classes: 'image is-4by3', [
          img(src: product.thumbnail, alt: product.title),
        ]),
      ]),
      div(classes: 'card-content', [
        div(classes: 'media', [
          div(classes: 'media-content', [
            p(classes: 'title is-4', [text(product.title)]),
            p(classes: 'subtitle is-6', [text(product.brand)]),
          ]),
        ]),
        div(classes: 'content', [text(product.description)]),
      ]),
    ]);
  }
}
