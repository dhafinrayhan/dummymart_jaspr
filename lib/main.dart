import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  runApp(Document(
    title: 'DummyMart',
    head: [
      link(href: 'styles.css', rel: 'stylesheet'),
    ],
    body: const ScopedApp(),
  ));
}
