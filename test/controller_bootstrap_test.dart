import 'package:bootstrap_flutter/bootstrap_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ControllerBootstrap controller;

  setUp(() {
    controller = ControllerBootstrap(
        [Component(style: 'lg-6 md-6', child: Container())]);
  });

  group("Test Controller Bootstrap", () {
    test("Get styles screen and height", () {
      const style = 'lg-6 md-6 sm-6 xs-12 xs:h/4';
      final organizations = controller.mountOrganizations(style);

      expect(organizations.length, 4);
      expect(organizations[TypeScreen.lg]!.division, 6);
      expect(organizations[TypeScreen.lg]!.height, 1);
      expect(organizations[TypeScreen.md]!.division, 6);
      expect(organizations[TypeScreen.md]!.height, 1);
      expect(organizations[TypeScreen.sm]!.division, 6);
      expect(organizations[TypeScreen.sm]!.height, 1);
      expect(organizations[TypeScreen.xs]!.division, 12);
      expect(organizations[TypeScreen.xs]!.height, 0.25);
    });

    test("Get styles only screen", () {
      const style = 'lg-6 md-6 sm-6 xs-12 ';
      final organizations = controller.mountOrganizations(style);

      expect(organizations.length, 4);
      expect(organizations[TypeScreen.lg]!.division, 6);
      expect(organizations[TypeScreen.lg]!.height, 1);
      expect(organizations[TypeScreen.md]!.division, 6);
      expect(organizations[TypeScreen.md]!.height, 1);
      expect(organizations[TypeScreen.sm]!.division, 6);
      expect(organizations[TypeScreen.sm]!.height, 1);
      expect(organizations[TypeScreen.xs]!.division, 12);
      expect(organizations[TypeScreen.xs]!.height, 1);
    });
    test("Get styles one screen", () {
      const style = 'lg-6';
      final organizations = controller.mountOrganizations(style);

      expect(organizations.length, 1);
      expect(organizations[TypeScreen.lg]!.division, 6);
      expect(organizations[TypeScreen.lg]!.height, 1);
    });

    test("Get styles one screen and one size", () {
      const style = 'lg-6 lg:h*2';
      final organizations = controller.mountOrganizations(style);

      expect(organizations.length, 1);
      expect(organizations[TypeScreen.lg]!.division, 6);
      expect(organizations[TypeScreen.lg]!.height, 2);
    });

    test("Get styles one screen and one size - inverted", () {
      const style = 'lg:h*2 lg-6 ';
      final organizations = controller.mountOrganizations(style);

      expect(organizations.length, 1);
      expect(organizations[TypeScreen.lg]!.division, 6);
      expect(organizations[TypeScreen.lg]!.height, 2);
    });

    test("Test mount components with styles ", () {
      controller = ControllerBootstrap(
          [Component(style: 'lg-6 md-6 xs:h/2', child: Container())]);

      controller.createComponents();

      expect(controller.components.length, 1);
      expect(
          controller.components[0].organizations[TypeScreen.lg]!.division, 6);
      expect(controller.components[0].organizations[TypeScreen.lg]!.height, 1);
      expect(
          controller.components[0].organizations[TypeScreen.md]!.division, 6);
      expect(controller.components[0].organizations[TypeScreen.md]!.height, 1);
       expect(
          controller.components[0].organizations[TypeScreen.xs]!.division, 12);
      expect(controller.components[0].organizations[TypeScreen.xs]!.height, 0.5);
    });
  });
}
