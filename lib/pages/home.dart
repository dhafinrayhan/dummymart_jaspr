import 'package:jaspr/jaspr.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'hero is-primary', [
      div(classes: 'hero-body', [
        p(classes: 'title', [text('Welcome to DummyMart!')])
      ])
    ]);
  }
}
