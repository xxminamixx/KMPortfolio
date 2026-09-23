import 'package:flutter/widgets.dart';

const double _wideBreakpoint = 800.0;

extension ResponsiveContext on BuildContext {
  bool get isWide => _wideBreakpoint < MediaQuery.sizeOf(this).width;
}
