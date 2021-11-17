import 'package:bootstrap_flutter/bootstrap_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Organization Test", () {
    test("Model functions", () {
      final model = Organization(division: 12, height: 100);

      final newModel = model.copyWith(division: 4, height: 200);
      final newModel2 = model.copyWith(
        division: 2,
      );
      final newModel3 = model.copyWith(
        height: 400,
      );
      expect(newModel3.division, 12);
      expect(newModel3.height, 400);
      expect(newModel2.division, 2);
      expect(newModel2.height, 100);
      expect(model.division, 12);
      expect(model.height, 100);
      expect(newModel.division, 4);
      expect(newModel.height, 200);
      expect(newModel == model, isFalse);
      expect(newModel.hashCode == model.hashCode, isFalse);
    });
  });
}
