import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:km_portfolio/core/router/app_router.dart';

void main() {
  for (final String path in <String>[
    AppRoute.root,
    AppRoute.profile,
    AppRoute.career,
    AppRoute.skills,
    AppRoute.contact,
  ]) {
    testWidgets('go_router resolves $path without error', (WidgetTester tester) async {
      appRouter.go(path);
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp.router(routerConfig: appRouter),
        ),
      );
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('tapping Profile on Home navigates to /profile via go_router', (WidgetTester tester) async {
    appRouter.go(AppRoute.root);
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp.router(routerConfig: appRouter),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();

    expect(find.text('Profile'), findsWidgets);
    expect(find.text('名前'), findsOneWidget);
  });
}
