import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:bootstrap_flutter/bootstrap_flutter.dart';

class Component {
  final String style;
  final Widget child;
  final Map<TypeScreen, Organization> organizations;

  Component(
      {required this.style,
      required this.child,
      this.organizations = const {}});
  Component copyWith({
    Map<TypeScreen, Organization>? organizations,
  }) {
    return Component(
      style: this.style,
      child: this.child,
      organizations: organizations ?? this.organizations,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is Component &&
        other.style == style &&
        other.child == child &&
        mapEquals(other.organizations, organizations);
  }

  @override
  int get hashCode => style.hashCode ^ child.hashCode ^ organizations.hashCode;
}
