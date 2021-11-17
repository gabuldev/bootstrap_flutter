import 'package:bootstrap_flutter/bootstrap_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Component Test", () {
    test("Model functions", () {
      final model = Component(child: Container(), style: "xs");

      final newModel = model.copyWith(organizations: {
        TypeScreen.xs: Organization(division: 12, height: 300)
      });
      final newModel2 = model.copyWith();
      expect(newModel2 == model, isTrue);
      expect(newModel2.hashCode == model.hashCode, isTrue);
      expect(newModel.organizations.containsKey(TypeScreen.xs), isTrue);
    });
  });
}
