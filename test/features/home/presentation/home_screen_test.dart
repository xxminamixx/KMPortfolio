import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:km_portfolio/features/home/presentation/home_screen.dart';

void main() {
  testWidgets('HomeScreen renders name and nav buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    expect(find.text('MINAMI KYOHEI'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Career'), findsOneWidget);
    expect(find.text('Works'), findsOneWidget);
  });
}
