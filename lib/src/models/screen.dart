/*

col-xs- => <768px (Container), Column(auto)
col-sm- => >= 768px (Container,750px), Column(~62px)
col-md => >= 992px (Container,970px), Column(~81px)
col-lg => >= 1200px (Container, 1170px), Column(~97px)
*/

enum TypeScreen { xs, sm, md, lg, none }

class ScreenData {
  final double width;
  final int operador;
  final double column;

  ScreenData(
      {required this.width, required this.operador, required this.column});
}

class Screen {
  static Map<TypeScreen, ScreenData> screens() {
    Map<TypeScreen, ScreenData> screens = {};
    screens.addAll(
        {TypeScreen.xs: ScreenData(width: 768.0, operador: 0, column: 768.0)});
    screens.addAll(
        {TypeScreen.sm: ScreenData(width: 768.0, operador: 1, column: 62.0)});
    screens.addAll(
        {TypeScreen.md: ScreenData(width: 992.0, operador: 1, column: 81.0)});
    screens.addAll(
        {TypeScreen.lg: ScreenData(width: 1200.0, operador: 1, column: 97.0)});
    return screens;
  }
}
