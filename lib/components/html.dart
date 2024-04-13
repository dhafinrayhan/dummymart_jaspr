import 'package:jaspr/jaspr.dart';

Component figure(List<Component> children,
    {Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events}) {
  return DomComponent(
    tag: 'figure',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}
