// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';

import 'app.dart' as c0;
import 'pages/about.dart' as c1;
import 'pages/home.dart' as c2;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
const defaultJasprOptions = JasprOptions(
  targets: {
    c0.ScopedApp: ClientTarget<c0.ScopedApp>('app'),
    c1.About: ClientTarget<c1.About>('pages/about'),
    c2.Home: ClientTarget<c2.Home>('pages/home'),
  },
);
