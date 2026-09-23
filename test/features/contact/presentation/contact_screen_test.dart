import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:km_portfolio/features/contact/presentation/contact_screen.dart';

void main() {
  testWidgets('ContactScreen renders placeholder content', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ContactScreen()));

    expect(find.text('Contact'), findsOneWidget);
    expect(find.text('誠意作成中'), findsOneWidget);
  });
}
