import 'package:flutter/material.dart';

import 'models/model.dart';

class ControllerBootstrap {
  final List<Component> components;
  ControllerBootstrap(this.components);

  Map<TypeScreen, Organization> mountOrganizations(String style) {
    final regExp =
        RegExp(r'(xs|md|lg|sm)|([-][0-9]*)|([:]{0}[h]{1}[\/*][0-9]*)');
    final matches = regExp.allMatches(style);
    final items = matches.map((match) {
      return match.group(0) ?? "";
    }).toList();
    final organizations = <TypeScreen, Organization>{};
    for (var i = 0; i + 1 < items.length; i++) {
      if ((i + 1) % 2 != 0) {
        var typeScreen = items[i].parseScreen;
        var height = organizations[typeScreen]?.height ?? 1.0;
        var division = organizations[typeScreen]?.division ?? 12;
        if (items[i + 1].contains("h")) {
          height = items[i + 1].parseHeight;
        } else {
          division = int.parse(items[i + 1]).abs();
        }
        organizations.addAll({
          items[i].parseScreen: Organization(
            division: division,
            height: height,
          )
        });
      }
    }
    return organizations;
  }

  void createComponents() {
    for (var i = 0; i < components.length; i++) {
      final organizations = mountOrganizations(components[i].style);
      components[i] = components[i].copyWith(
        organizations: organizations,
      );
    }
  }
}
