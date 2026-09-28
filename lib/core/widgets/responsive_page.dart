import 'package:flutter/material.dart';

/// Padding that shrinks on narrow (mobile) screens and grows on wide
/// (desktop) screens, instead of a single fixed margin for every viewport.
EdgeInsets responsivePagePadding(double width) {
  if (width < 600) return const EdgeInsets.all(24);
  if (width < 1024) return const EdgeInsets.all(40);
  return const EdgeInsets.all(64);
}

/// Wraps [child] in a scrollable, centered container whose width is capped
/// at [maxWidth] so text doesn't stretch edge-to-edge on wide desktop
/// screens, with padding that adapts to the viewport via
/// [responsivePagePadding].
class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key, required this.child, this.maxWidth = 960});

  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Padding(
            padding: responsivePagePadding(width),
            child: child,
          ),
        ),
      ),
    );
  }
}
