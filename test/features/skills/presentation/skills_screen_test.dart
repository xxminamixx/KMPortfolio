import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:km_portfolio/features/skills/presentation/skills_screen.dart';

void main() {
  testWidgets('SkillsScreen renders placeholder content', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SkillsScreen()));

    expect(find.text('Skills'), findsOneWidget);
    expect(find.text('誠意作成中'), findsOneWidget);
  });
}
