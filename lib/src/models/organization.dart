import 'screen.dart';

class Organization {
  final int division;
  final double height;

  Organization({
    required this.division,
    required this.height,
  });

  Organization copyWith({
    TypeScreen? type,
    int? division,
    double? height,
  }) {
    return Organization(
      division: division ?? this.division,
      height: height ?? this.height,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Organization &&
        other.division == division &&
        other.height == height;
  }

  @override
  int get hashCode => division.hashCode ^ height.hashCode;
}

extension OrganizationExt on String {
  double get parseHeight {
    final operator = this.substring(1, 2);
    final value = operator == "/"
        ? 1 / double.parse(this.substring(2))
        : double.parse(this.substring(2));
    return value;
  }

  TypeScreen get parseScreen {
    if (this == "lg") {
      return TypeScreen.lg;
    } else if (this == "md") {
      return TypeScreen.md;
    } else if (this == "sm") {
      return TypeScreen.sm;
    } else {
      return TypeScreen.xs;
    }
  }
}
