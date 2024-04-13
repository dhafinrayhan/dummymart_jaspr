import '../../../features/products/models/product.dart';
import '../api_client.dart';

part 'mocked_api_client_repository.dart';

class MockedApiClient implements ApiClient {
  final Duration _delay;

  final List<Product> _products = _MockedApiClientRepository.getProducts();

  MockedApiClient({Duration? delay})
      : _delay = delay ?? const Duration(milliseconds: 500);

  @override
  Future<List<Product>> fetchProducts() async {
    await Future.delayed(_delay);
    return _products;
  }
}
