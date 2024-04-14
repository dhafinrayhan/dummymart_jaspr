import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../../../services/api/api_client_provider.dart';
import '../models/product.dart';

final productsProvider = FutureProvider.autoDispose<List<Product>>(
  (ref) => ref.watch(apiClientProvider).fetchProducts(),
);
