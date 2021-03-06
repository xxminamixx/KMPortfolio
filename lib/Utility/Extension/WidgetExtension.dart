import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/Const.dart';

extension WidgetExtension on Widget {

  // MARK: Navigation

  void popRoot(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName(route.root));
  }

  void push(BuildContext context, Widget widget, [String routeName = '']) {
    Navigator.of(context).push<void>(
        MaterialPageRoute<void>(
          settings: RouteSettings(name: routeName),
          builder: (BuildContext context) => widget
        )
    );
  }

}