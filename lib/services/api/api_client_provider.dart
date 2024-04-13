import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import 'api_client.dart';
import 'mock/mocked_api_client.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  const mock = bool.fromEnvironment('MOCK_API', defaultValue: false);
  if (mock) return MockedApiClient();

  return ApiClient();
});
