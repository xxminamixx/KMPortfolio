import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:km_portfolio/features/career/presentation/career_screen.dart';

void main() {
  testWidgets('CareerScreen renders the stepper and reacts to step taps', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1200, 3000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const ProviderScope(child: MaterialApp(home: CareerScreen())));
    await tester.pumpAndSettle();

    expect(find.text('Career'), findsOneWidget);
    expect(find.byType(Stepper), findsOneWidget);
    expect(find.text('株式会社サイバーエージェント 入社'), findsOneWidget);

    // Tapping the second step's header should move currentStep there,
    // exposing the second step's content (careerStepProvider round-trip).
    await tester.ensureVisible(find.text('meuron株式会社'));
    await tester.tap(find.text('meuron株式会社'));
    await tester.pumpAndSettle();

    final Stepper stepper = tester.widget<Stepper>(find.byType(Stepper));
    expect(stepper.currentStep, 1);
  });
}
