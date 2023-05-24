import 'package:flutter/material.dart';

extension DynamicExtension on BuildContext {
  double dynamicWith(double param) => MediaQuery.of(this).size.width * param;
  double dynamicHeight(double param) => MediaQuery.of(this).size.height * param;
}

extension FontSizeExtension on BuildContext {
  double get heightFontSize => dynamicWith(0.1);
  double get mediumFontSize => dynamicWith(0.08);
  double get lowFontSize => dynamicWith(0.05);
  double get MiniFontSize => dynamicWith(0.04);
}

extension PaddingExtension on BuildContext {
  double get mediumallPadding => dynamicWith(0.05);
  double get lowallPadding => dynamicWith(0.025);
}

extension MarginExtension on BuildContext {
  double get mediumMargin => dynamicWith(0.02);
  double get lowMargin => dynamicWith(0.01);
}
