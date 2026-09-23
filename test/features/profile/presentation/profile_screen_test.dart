import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:km_portfolio/features/profile/presentation/profile_screen.dart';

void main() {
  testWidgets('ProfileScreen renders profile heading and paired fields', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProfileScreen()));

    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('名前'), findsOneWidget);
    expect(find.text('南 京兵 (みなみ きょうへい)'), findsOneWidget);
  });
}
