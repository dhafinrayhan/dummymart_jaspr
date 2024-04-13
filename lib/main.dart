import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';
import 'styles.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  runApp(Document(
    title: 'dummymart_jaspr',
    styles: styles,
    body: App(),
  ));
}
