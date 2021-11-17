import 'package:bootstrap_flutter/bootstrap_flutter.dart';
import 'package:flutter/material.dart';

extension BoxConstraintsExt on BoxConstraints {
  TypeScreen get getScreenType {
    if (this.maxWidth < 768) {
      return TypeScreen.xs;
    } else if (this.maxWidth >= 768 && this.maxWidth < 992) {
      return TypeScreen.sm;
    } else if (this.maxWidth >= 992 && this.maxWidth < 1200) {
      return TypeScreen.md;
    } else if (this.maxWidth >= 1200) {
      return TypeScreen.lg;
    } else {
      return TypeScreen.none;
    }
  }
}
